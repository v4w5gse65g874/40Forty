<?php
/**
 * valid user_statistics "statistic" values:
 *  "tagged_who" - uID tagged value.
 *  "score_change" - the value is what is added.  a negative means player lost points.
 *  "entered_tagging_zone" - same as above but saved as an insert in user_statistics with game_id, used for statistics
 *  "exited_tagging_zone" - taggee evaded tagger, after having "entered_tagging_zone", and is saved in user_statistics with game_id for statistics
 *  "assigned_as_it" - this person is currently "it" and is used for statistics purposes with game_id
 *  "outlasted_taggers" - this person lasted the whole match (whatever i decide, dunno yet) withOUT being tagged, timer went to 0!!
 */

require_once "constants.php";

/*
 * let's calculate the distance between two given points for a test
 */
function distance($lat1, $lon1, $lat2, $lon2)
{
	$theta = $lon1 - $lon2; 
	$dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta)); 
	$dist = acos($dist); 
	$dist = rad2deg($dist); 
	$miles = $dist * 60 * 1.1515;
	$unit = "K";

	//we'll return meters for now
	if ($unit == "K")	{
		return ($miles * 1.609344 * 1000); 
	}
	else if ($unit == "N")	{
		return ($miles * 0.8684);
	} else	{
		return $miles;
	}
}

/*
 * This function connects to the database and returns the link
 */
function connect()
{
    $link = "";
	
    if($_SERVER['HTTP_HOST'] === "gator1251.hostgator.com" || $_SERVER['HTTP_HOST'] === "40forty.com" || $_SERVER['HTTP_HOST'] === "www.40forty.com")	{
	$link = mysql_connect('localhost', 'segstsh5_tshe4as', '&Lxa!%WIBawm');
    }
    else	{
        echo 'bad attempt';
        exit;
    }
    
    return $link;
}

/*
Performs the SQL fetch and returns an array
*/
function performQ($query, $db)
{
    $test = explode(" ", rtrim($query));

    // Connecting, selecting database
    $link = connect();

    $db_choice = "segstsh5_" . $db;

    if($db === "appusers") 
        mysql_select_db($db_choice, $link);
    elseif($db === "appgames")
        mysql_select_db($db_choice, $link);
    else	{
        echo "non-existant database, exiting";
        exit;
    }

    //trying to prevent union select attacks - remove later if i ever end up using UNION in my sql
    if(!in_array("UNION", $test))	{
        if($test[0] == "SELECT")	{
            $result = mysql_query($query, $link) or error_log(mysql_error());
            
            if($result === FALSE)	{
                error_log($query);
                error_log("\n");
            }
            
	    $array1 = array();
            while($array = mysql_fetch_assoc($result))	{
		$array1[] = $array;
	    }
	    
            // Free resultset
            mysql_free_result($result);
            
            // Closing connection
            mysql_close($link);
            
	return $array1;
        }
        if($test[0] == "UPDATE" || $test[0] == "DELETE" || $test[0] == "INSERT")	{
            $result = mysql_query($query) or error_log(mysql_error());
            
            if($result === FALSE)	{
                    error_log($query);
                    error_log("\n");
            }
            
            // Closing connection
            mysql_close($link);
        }
    }
}

/*
 this function cleans the game type
*/
function clean_game_type($dirty)
{
	switch($dirty)	{
		case 'free_for_all':
			$clean = 'free_for_all';
			return $clean;
			break;
	}
	
        $mess = "clean_game_type had bad game type, exiting";
	log_error($mess);
	exit;
}
/*
 this function makes sure the uID sent in via $_GET is a number and exists in our DB as a user
*/
function clean_uid($dirty)
{
    $link = connect();
    $uid = mysql_real_escape_string($dirty, $link);

    $query = "SELECT count(1) FROM users WHERE uID = " . $uid;
    $res = performQ($query, "appusers");

    if((int)$res[0]['count(1)'] === 1)	{
	return $uid;
    }
    else	{
	$msg = "uID '" . $uid . "' was non-existant.";
	log_error($msg);
	exit;
    }
}

/**
 *this function cleans the radius
 */
function clean_radius($r)	{
    if(!eregi('^[0-9]*$', $r))    {
        log_error("the sent in radius was not an int.");
        exit;
    }

	if((int)$r === 0)	{
		log_error("the sent in radius was 0, defaulting to 3");
		return 3;
	}
	
	return $r;	
}

/**
 *this function cleans the round number
 */
function clean_round_number($num)	{
    if(!eregi('^[0-9]*$', $num))    {
        log_error("the sent in round number was not an int.");
        exit;
    }

	if((int)$num < 1)	{
		log_error("the sent in round number was < 1");
		exit;
	}
	
	return $num;		
}

/**
 *this function finds other users to start a game with us
 */
function find_players_to_start_game($our_info, $our_id)	{
	//get all users in the pending pool that is not us (we're already locked, so we're good...)
	$query = "SELECT uID_of_user, latitude, longitude, game_radius_max FROM pending_pool WHERE game_type = '" . $our_info['game_type'] . "' AND game_difficulty = '" . $our_info['game_difficulty'] . "' AND user_lock = 0";
	$possible_players = performQ($query, 'appusers');
	
	foreach($possible_players as $p)	{
		//check if that player is locked.  if it isn't, lock it up to check
		$query = "SELECT user_lock FROM pending_pool WHERE uID_of_user = " . $p['uID_of_user'];
		$u_lock = performQ($query, 'appusers');
		
		if((int)$u_lock[0]['user_lock'] === 0)	{
			//lock them
			$query = "UPDATE pending_pool SET user_lock = 1 WHERE uID_of_user = " . $p['uID_of_user'];
			performQ($query, 'appusers');
			
			//get the distance between the players
			$dist = distance($our_info['latitude'], $our_info['longitude'], $p['latitude'], $p['longitude']);
			
			//now, if the distance is within the radius sent in AND matches their radius we have a match,
			//make the game, set the radius based on that which was sent in, return the $gid and we're good.
			//we wont bother trying to get 10 people since there could potentially be a HUGE list.  they'll be
			//constantly pinging anyway so if this game is a match for them they'll join it anyway
			if(($p['game_radius_max']) >= ($our_info['game_radius_max']) && $dist <= ($our_info['game_radius_max']))	{
				//we found a person within our range that his radius is greater or equal to our game range
				//lets make the game and lock it:
				$s_time = time();
				$query = "INSERT INTO games (game_type, start_time, latitude_center, longitude_center, game_radius, game_lock) VALUES ('" . $our_info['game_type'] . "', " . $s_time . ", " . $our_info['latitude'] . ", " . $our_info['longitude'] . ", " . $our_info['game_radius_max'] . ", 1)";
				performQ($query, 'appgames');
				
				//get the new gID num:
				$query = "SELECT game_id FROM games WHERE start_time = " . $s_time . " AND latitude_center = " . $our_info['latitude'] . " AND longitude_center = " . $our_info['longitude'] . " AND game_lock = 1";
				$gID = performQ($query, 'appgames');
				
				//insert the round in round_info
				$query = "INSERT INTO game_round_info (gID, round_number, round_start) VALUES (" . $gID[0]['game_id'] . ", 1, " . $s_time . ")";
				performQ($query, 'appgames');
				
				//enter the participants (including myself)
				$query = "SELECT username FROM users WHERE uID = " . $our_id;
				$our_username = performQ($query, 'appusers');
				
				$query = "SELECT username FROM users WHERE uID = " . $p['uID_of_user'];
				$their_username = performQ($query, 'appusers');
				
				$query = "INSERT INTO game_participants (game_id, username, time_joined) VALUES (" . $gID[0]['game_id'] . ", '" . $our_username[0]['username'] . "', " . $s_time . ")";
				performQ($query, 'appgames');
				
				$query = "INSERT INTO game_participants (game_id, username, time_joined) VALUES (" . $gID[0]['game_id'] . ", '" . $their_username[0]['username'] . "', " . $s_time . ")";
				performQ($query, 'appgames');
				
				//delete the 2 users from the pending pool
				$query = "DELETE FROM pending_pool WHERE uID_of_user = " . $p['uID_of_user'];
				performQ($query, 'appusers');
				
				$query = "DELETE FROM pending_pool WHERE uID_of_user = " . $our_id;
				performQ($query, 'appusers');
				
				//determine who's going to be "IT"
				determine_who_is_it($gID[0]['game_id']);
				
				//unlock the game
				$query = "UPDATE games SET game_lock = 0 WHERE game_id = " . $gID[0]['game_id'];
				performQ($query, 'appgames');
				
				//return the gID
				return $gID[0]['game_id'];
			}
			
			//ok - that user didn't work out.  unlock them so others can see if they're a match and move on to the next player
			$query = "UPDATE pending_pool SET user_lock = 0 WHERE uID_of_user = " . $p['uID_of_user'];
			performQ($query, 'appusers');			
		}
	}
	
	//no possible players were found.  weak!  
	return 0;
}

/*
 this function gets the score/rank and returns it - used by login and quit game
*/
function get_score_for_update_iphone($uid)    {
    $query = "SELECT overall_score, undertitle FROM user_ranks WHERE uID = " . $uid . " AND game_type = 'free_for_all'";
    $r2 = performQ($query, "appusers");
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($r2, $clean['username']);
    //==================
    //debug code end
    //==================    
    
    $query = "SELECT count(1) FROM user_ranks WHERE game_type = 'free_for_all' AND overall_score > " . (int)$r2[0]['overall_score'];
    $rank = performQ($query, "appusers");
    $rank = (int)$rank[0]['count(1)'] + 1;
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($rank, $clean['username']);
    //==================
    //debug code end
    //==================
    

    $resp['undertitle'] = $r2[0]['undertitle'];
    $resp['overall_rank'] = $rank;
    $resp['overall_score'] = $r2[0]['overall_score'];
    
    $query = "SELECT count(1) FROM user_ranks WHERE game_type = 'free_for_all'";
    $r2 = performQ($query, "appusers");
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($r2, $clean['username']);
    //==================
    //debug code end
    //==================    
    
    $resp['overall_players'] = $r2[0]['count(1)'];
    
    return $resp;
}


function clean_game_difficulty($val)
{
	$val = trim(strtolower($val));
	
	if($val === 'easy' || $val === 'medium' || $val === 'hard' || $val === 'hardcore')	{
		return $val;
	}

	$message = 'value ' . $val . ' is not a valid difficulty, returning "easy"';
	log_error($message);
	
	return "easy";
}
/**
 *this function randomly determines who is going to be "IT" for this round.  called at the start of every round for every game.
 *
 *behavior of this will be determining game type for sent in gID, and based on that game type
 *we decide how many people will be "IT", it is random
 */
function determine_who_is_it($gid)
{
	//get the current round
	$query = "SELECT current_round FROM games WHERE game_id = " . $gid;
	$cur_round = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($cur_round, $clean['username']);
        //==================
        //debug code end
        //==================    
	$cur_round = $cur_round[0]['current_round'];                        

	//get all players in the game sent in
	$query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid;
	$players = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($players, $clean['username']);
        //==================
        //debug code end
        //==================                            
	
	//determine game type
	$query = "SELECT game_type FROM games WHERE game_id = " . $gid;
	$game_type = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($game_type, $clean['username']);
        //==================
        //debug code end
        //==================                            
	
	//based on the game type we find x IT players
	$it_count = 1;
	if($game_type[0]['game_type'] === "free_for_all")	{
		//count how many existing "IT" players there are.  if >= constant, don't do while loop
		$c = 0;
		foreach($players as $p)	{
			$query = "SELECT currently_it FROM users WHERE username = '" . $p['username'] . "'";
			$is_he1 = performQ($query, 'appusers');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        debug_results($is_he1, $clean['username']);
                        //==================
                        //debug code end
                        //==================                            
			
			if((int)$is_he1[0]['currently_it'] === 1)	{
				$c++;
			}
		}
		
		if($c < FFA_IT_COUNT)	{
                    if(shuffle($players))   {
                        $cx = 0;
			while($it_count <= FFA_IT_COUNT)	{				
                            $query = "SELECT currently_it, uID FROM users WHERE username = '" . $players[$cx]['username'] . "'";
                            $is_he = performQ($query, 'appusers');
                            //==================
                            //debug code start
                            //==================
                            debug_query($query, $clean['username']);
                            debug_results($is_he, $clean['username']);
                            //==================
                            //debug code end
                            //==================                            
                            
                            if((int)$is_he[0]['currently_it'] === 1)	{
                                $cx++;
                                continue;
                            }
                            
                            $query = "UPDATE users SET currently_it = 1 WHERE username = '" . $players[$cx]['username'] . "'";
                            performQ($query, 'appusers');
                            //==================
                            //debug code start
                            //==================
                            debug_query($query, $clean['username']);
                            //==================
                            //debug code end
                            //==================                            
                            
				$query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES (" . $is_he[0]['uID'] . ", 'assigned_as_it', " . $gid . ", " . $cur_round . ", 1, " . time() . ")";
				performQ($query, 'appusers');
                            //==================
                            //debug code start
                            //==================
                            debug_query($query, $clean['username']);
                            //==================
                            //debug code end
                            //==================                            
 
                            $it_count++;
                            $cx++;
			}
                    }
                    else    {
                        //wtf, shuffle failed?  that makes no sense, but log it.
                        log_error("Shuffle of array failed, wtf.", $clean['username']);
                    }
		}
	}
}

/**
 *this function cleans the username for user creation
 */
function clean_username($dirty)
{
    $dirty = urldecode(trim($dirty));
    
    //username is NULL, empty, it fails
    if($dirty === '' || is_null($dirty)) {
        return null;
    }
    
    $link = connect();
    
    return mysql_real_escape_string($dirty, $link);
}

/**
 *this function cleans the password for user creation
 */
function clean_password($dirty)
{
    $dirty = urldecode(trim($dirty));
    
    //password is NULL, empty, it fails
    if($dirty === '' || is_null($dirty)) {
        return null;
    }
    
    $link = connect();
    
    return mysql_real_escape_string($dirty, $link);    
}

/**
 *this function cleans the email
 */
function clean_email($dirty)    {
    $dirty = urldecode(trim($dirty));
    
    //email is NULL, empty, it fails
    if($dirty === '' || is_null($dirty)) {
        return null;
    }
    
    $link = connect();
    
    return mysql_real_escape_string($dirty, $link);    
}

/**
 *this function verifies the input is valid, AND the user exists
 */
function clean_user($dirty)
{
    $dirty = urldecode(trim($dirty));
    
    //username is NULL, empty, > USERNAME_MAX_LENGTH characters, it fails
    if($dirty === '' || is_null($dirty) || strlen($dirty) > USERNAME_MAX_LENGTH) {
        log_error("the sent in user was either empty, null or greater than USERNAME_MAX_LENGTH");
        exit;
    }
    
    //not alphanumeric
    if(!eregi('^[a-zA-Z0-9_]*$', $dirty))    {
        log_error("the sent in user was not alphanumeric.");
        exit;
    }
    
    $link = connect();
    $clean = mysql_real_escape_string($dirty, $link);

    //we're not even going to entertain the idea of damage control here.  if its an invalid user just exit.
    $query = "SELECT username FROM users WHERE username = '" . $clean . "'";
    $res = performQ($query, "appusers");
    
    if($res[0]['username'] === $clean)	{
	return $clean;
    }
    else	{
	$msg = "username '" . $clean . "' was non-existant.";
	log_error($msg);
	return null;
    }
}

/**
 *this function verifies the input is valid, AND the gameid exists
 */
function clean_gameid($gameid)
{
	$link = connect();
	$gameid = mysql_real_escape_string($dirty);
    
    $query = "SELECT game_id FROM games WHERE game_id = " . $gameid;
    $res = performQ($query, "appgames");
    
    if((int)$res[0]['game_id'] === $gameid)	{
	return $gameid;
    }
    else	{
	$msg = "game_id '" . $gameid . "' was non-existant.";
	log_error($msg);
	return null;
    }
}

/**
 *this function cleans the lat/lng
 */
function clean_lat_lng($num)
{
	if($num === null || $num === '')	{
		log_error('clean_lat_lng either null or empty');
		exit;
	}
	
    $num = floatval($num);
    
    return $num;
}

/**
 *my custom error logger for API calls
 */
function log_error($msg)
{
    $date = date("m.d.Y G:i:s", time());
    $msg = "[" . $date . "]" . " " . $msg . "\n";
    error_log($msg, 3, API_ERROR_FILE_PATH);
}

/**
 *my debug logger for API calls
 */
function debug_log($msg, $fname = "debug_log")
{
    if($fname === '')   {
        $fname = "debug_log";
    }
    
    $date = date("m.d.Y G:i:s", time());
    $msg = "[" . $date . "]" . " " . $msg . "\n";
    $t = DEBUG_LOG_FILE_PATH . $fname;
    error_log($msg, 3, $t);
}

/**
 *these 2 function calls debug_log on the sent in query, just makes it easier to not repeat code
 */
function debug_query($query, $user)
{
	if(DEBUG_FLAG)  {
                debug_log($query, $user);
	}
}
function debug_results($var, $user)
{
	if(DEBUG_FLAG)	{
		$msg = '';
                if(is_array($var[0]))  {
                    for($q=0;$q<count($var);$q++)	{
                        $msg .= "index " . $q . ":\n";
                        
                        foreach($var[$q] as $k => $v)	{
                            $msg .= "\t" . $k . " => " . $v . "\n";
                        }
                    }
                }
                else    {
                    foreach($var as $k => $v)	{
                        $msg .= "\t" . $k . " => " . $v . "\n";
                    }    
                }
                
		debug_log($msg, $user);
	}
}

/**
 *this function checks the timestamp to make sure it's within 30 seconds of server time
 *
 */
function clean_timestamp($n1)
{
	$n1 = trim($n1);
	
    if(!eregi('^[0-9]*$', $n1))    {
        log_error("the sent in time was not an int.");
        exit;
    }

	return $n1;

//not sure why i need this???
/*    $n2 = time();
    $res = (int)$n1 - $n2;
    $res = ($res < 0) ? $res*-1 : $res;
    
    if($res > 30)	{
	log_error("timestamp sent in from iphone exceeded 30 seconds - exiting");
	exit;
    }
*/
}

/**
 *this function sets a player's rank (FFA)
 *
function set_rank_ffa($uid)
{
    //first get that player's score
    $query = "SELECT overall_score FROM user_ranks WHERE uID = " . $uid . " AND game_type = 'free_for_all'";
    $score = performQ($query, "appusers");
    
    //ok now place them in a rank
    //xxx todo - just use these next 3 lines for getting rank, dont store it in DB.  it is inaccurate and should
    //be based off of score anyway. (put it in quit code and logged in code to return to the iphone)
    $query = "SELECT count(1) FROM user_ranks WHERE game_type = 'free_for_all' AND overall_score > " . (int)$score[0]['overall_score'];
    $rank = performQ($query, "appusers");
    $rank = (int)$rank[0]['count(1)'] + 1;
    
    $query = "UPDATE user_ranks SET overall_rank = " . $rank . " WHERE uID = " . $uid . " AND game_type = 'free_for_all'";
    performQ($query, "appusers");
}
 */

/**
 *this function determines each player's score level, returns an array
 */
function determine_score_delta($tagger_curr_score, $taggee_curr_score)
{
    //todo xxx make a cool formula for aggressive play
    
    $score = array();
    //tagger gains 15
    $score['tagger'] = 15;
    
    //taggee loses 10
    $score['taggee'] = -10;

    return $score;
}

/**
 *tagger_scored.php was successful and game_type was free_for_all, update scores.
 */
function update_ffa($tagger, $taggee, $gameid, $round_num, $update_time)
{
    //we know the users and gameid are clean.  insert statistic.
    $query = "SELECT uID FROM users WHERE username = '" . $tagger . "'";
    $tagger_uid = performQ($query, "appusers");
                                 //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                debug_results($tagger_uid, $tagger);
                                //==================
                                //debug code end
                                //==================
                                
    $query = "SELECT uID FROM users WHERE username = '" . $taggee . "'";
    $taggee_uid = performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                debug_results($taggee_uid, $tagger);
                                //==================
                                //debug code end
                                //==================
                                
    $query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES ("
	. $tagger_uid[0]['uID']
	. ", 'tagged_who', "
	. $gameid
        . ", " . $round_num
	. ", '" . $taggee_uid[0]['uID']
	. "', " . $update_time . ")";
    performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    //determine scoring...
    $query = "SELECT overall_score FROM user_ranks WHERE uID = " . $tagger_uid[0]['uID'] . " AND game_type = 'free_for_all'";
    $tagger_stat = performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                debug_results($tagger_stat, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    $query = "SELECT overall_score FROM user_ranks WHERE uID = " . $taggee_uid[0]['uID'] . " AND game_type = 'free_for_all'";
    $taggee_stat = performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                debug_results($taggee_stat, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    $score_array = determine_score_delta($tagger_stat, $taggee_stat);
    
    //add in the user_statistics the score change per player for this round
    $query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES ("
	. $tagger_uid[0]['uID']
	. ", 'score_change', "
	. $gameid
        . ", " . $round_num
	. ", " . $score_array['tagger']
	. ", " . $update_time . ")";
    performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    $query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES ("
	. $taggee_uid[0]['uID']
	. ", 'score_change', "
	. $gameid
        . ", " . $round_num
	. ", " . $score_array['taggee']
	. ", " . $update_time . ")";
    performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    //now update each tagger and taggee score
    $tagger_new_score = (int)$tagger_stat[0]['overall_score'] + $score_array['tagger'];
    $taggee_new_score = (int)$taggee_stat[0]['overall_score'] + $score_array['taggee'];
    
    $query = "UPDATE user_ranks SET overall_score = " . $tagger_new_score . " WHERE uID = " . $tagger_uid[0]['uID'] . " AND game_type = 'free_for_all'";
    performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    $query = "UPDATE user_ranks SET overall_score = " . $taggee_new_score . " WHERE uID = " . $taggee_uid[0]['uID'] . " AND game_type = 'free_for_all'";
    performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $tagger);
                                //==================
                                //debug code end
                                //==================
    
    
    //update their rank xxx todo delete this.  look in set_rank_ffa for what to do with some specific code
    //set_rank_ffa($tagger_uid['uID']);
    //set_rank_ffa($taggee_uid['uID']);
}

/*
 this function returns a good list of games within the user's area
*/
function discover_legit_games($raw_game_list, $my_info)
{
	$my_lat = $my_info[0]['latitude'];
	$my_lng = $my_info[0]['longitude'];
	$my_radius = (int)$my_info[0]['game_radius_max'];
	$refined_list = array();
	
	foreach($raw_game_list as $game)	{
		$temp_lat = $game['latitude_center'];
		$temp_lng = $game['longitude_center'];
		$temp_radius = (int)$game['game_radius'];
		$temp_gid = $game['game_id'];
		
		//returns in meters
		$dist = distance($temp_lat, $temp_lng, $my_lat, $my_lng);
		
		//so, our player trying to join the game is within the game's radius
		//AND
		//the radius of the game matches (or is less than) the preferences we're looking for
		if($dist <= $temp_radius && $temp_radius <= $my_radius)	{
			//this is a game that we can join, add it to the list
			$refined_list[] = $temp_gid;
		}
	}
	
        //==================
                //debug code start
                //==================
                debug_query("REFINED LIST", $clean['username']);
                debug_results($all_possible_games, $clean['username']);
                //==================
                //debug code end
                //==================
                
	//return list of gids for balancing
	return $refined_list;
}

/*
 this function returns 1 gid based on the game to join
*/
function join_to_balance($gids)
{
	$final = array();
	
	//list of how many good games we could possibly join, now we need to
	//determine how many players are in each one - MAYBE in the future consider
	//score?? 
	foreach($gids as $gid)	{
		$query = "SELECT count(1) FROM game_participants WHERE game_id = " . $gid . " AND time_left = 0";
		$player_game_count = performQ($query, 'appgames');
		
		//consider game type especially for larger games in future implementations
		$query = "SELECT game_type FROM games WHERE game_id = " . $gid;
		$g_type = performQ($query, 'appgames');
		
		$temp = array();
		$temp[] = (int)$gid;
		$temp[] = (int)$player_game_count[0]['count(1)'];
		
		//the max number of players is already in the game based on game type, check the next one
		if($g_type[0]['game_type'] === 'free_for_all')	{
			//ffa needs minimum of MIN_FFA_GAME_PARTICIPANTS players and max of MAX_FFA_GAME_PARTICIPANTS
			if($temp[1] < MIN_FFA_GAME_PARTICIPANTS || $temp[1] >= MAX_FFA_GAME_PARTICIPANTS)	{
				continue;
			}
			else	{
				$final[] = $temp;	
			}
		}
	}

	if(count($final) === 0)	{
		//we couldn't find one to join, return 0
		return 0;
	}
	
	//out of that array, pick the lowest one
	$real_low = 10;
	$real_gid = 0;
	foreach($final as $which)	{
		$new_gid = $which[0];
		$new_low = $which[1];
		
		if($new_low < $real_low)	{
			$real_low = $new_low;
			$real_gid = $new_gid;
		}
	}

	//double check ONE LAST TIME for game lock
	$query = "SELECT game_lock FROM games WHERE game_id = " . $real_gid;
	$t = performQ($query, 'appgames');
	
	if((int)$t[0]['game_lock'] === 1)	{
		//it was found to be locked
		return 0;
	}

	return $real_gid;
}

/******************************
 *  SEND LOCATION API GET_ALL CASE
 ******************************/
function send_location_api_get_all($clean)  {
    //==================
    //debug code start
    //==================
    debug_results($clean, $clean['username']);
    //==================
    //debug code end
    //==================
    //==================
    //debug code start
    //==================
    if(DEBUG_FLAG)  {
        $dmsg = $clean['username'] . " get_all START\n\n";
        debug_log($dmsg, $clean['username']);
    }
    //==================
    //debug code end
    //==================
    $query = "SELECT game_id FROM game_participants WHERE username = '" . $clean['username'] . "' AND time_left = 0";
    $gid = performQ($query, 'appgames');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($gid, $clean['username']);
    //==================
    //debug code end
    //==================
    
    $players = array();
    
    $query = "SELECT username FROM game_participants WHERE game_id = " . $gid[0]['game_id'] . " AND time_left = 0";
    $res = performQ($query, 'appgames');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($res, $clean['username']);
    //==================
    //debug code end
    //==================

    $query = "SELECT uID FROM users WHERE username = '" . $clean['username'] . "'";
    $myuID = performQ($query, 'appusers');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($myuID, $clean['username']);
    //==================
    //debug code end
    //==================
    
    foreach($res as $x)  {
        $query = "SELECT current_lat, current_lng, currently_it FROM users WHERE username = '" . $x['username'] . "'";
        $r = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($r, $clean['username']);
        //==================
        //debug code end
        //==================
        
        $query = "SELECT uID FROM users WHERE username = '" . $x['username'] . "'";
        $uID = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($uID, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //get score/etc
        $query = "SELECT overall_score, undertitle FROM user_ranks WHERE uID = " . $uID[0]['uID'];
        $orosu = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($orosu, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //get rank
        $query = "SELECT count(1) FROM user_ranks WHERE game_type = 'free_for_all' AND overall_score > " . (int)$orosu[0]['overall_score'];
        $rank = performQ($query, "appusers");
        $rank = (int)$rank[0]['count(1)'] + 1;
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($rank, $clean['username']);
        //==================
        //debug code end
        //==================    
        
        //get tags in current game
        $query = "SELECT count(1) FROM user_statistics WHERE statistic = 'tagged_who' AND game_id_it_happened_in = " . $gid[0]['game_id'] . " AND uID = " . $uID[0]['uID'];
        $stats1 = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($stats1, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //get tagged by others in current game
        $query = "SELECT count(1) FROM user_statistics WHERE statistic = 'tagged_who' AND game_id_it_happened_in = " . $gid[0]['game_id'] . " AND value = " . $uID[0]['uID'];
        $stats2 = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($stats2, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //i tagged them x times
        $query = "SELECT count(1) FROM user_statistics WHERE statistic = 'tagged_who' AND game_id_it_happened_in = " . $gid[0]['game_id'] . " AND uID = " . $myuID[0]['uID'] . " AND value = " . $uID[0]['uID'];
        $stats3 = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($stats3, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //they tagged me x times
        $query = "SELECT count(1) FROM user_statistics WHERE statistic = 'tagged_who' AND game_id_it_happened_in = " . $gid[0]['game_id'] . " AND uID = " . $uID[0]['uID'] . " AND value = " . $myuID[0]['uID'];
        $stats4 = performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($stats4, $clean['username']);
        //==================
        //debug code end
        //==================
        
        $temp = array();
        $temp[] = $x['username'];
        $temp[] = $r[0]['current_lat'];
        $temp[] = $r[0]['current_lng'];
        $temp[] = $r[0]['currently_it'];
        $temp[] = $rank;
        $temp[] = $orosu[0]['overall_score'];
        $temp[] = $orosu[0]['undertitle'];
        $temp[] = $stats1[0]['count(1)'];
        $temp[] = $stats2[0]['count(1)'];
        $temp[] = $stats3[0]['count(1)'];
        $temp[] = $stats4[0]['count(1)'];
        
        $players[] = $temp;
    }
    
    //==================
    //debug code start
    //==================
    debug_results($players, $clean['username']);
    //==================
    //debug code end
    //==================
    //==================
    //debug code start
    //==================
    if(DEBUG_FLAG)  {
        $dmsg = $clean['username'] . " get_all STOP\n\n";
        debug_log($dmsg, $clean['username']);
    }
    //==================
    //debug code end
    //==================

    return $players;
}

/******************************
 *  SEND LOCATION API GET_DIST_FROM_IT CASE
 ******************************/
function send_location_api_get_dist_from_it($clean)  {
    //==================
    //debug code start
    //==================
    debug_results($clean, $clean['username']);
    //==================
    //debug code end
    //==================
    //==================
    //debug code start
    //==================
    if(DEBUG_FLAG)  {
        $dmsg = $clean['username'] . " get_dist_from_it START\n\n";
        debug_log($dmsg, $clean['username']);
    }
    //==================
    //debug code end
    //==================
    $query = "SELECT game_id FROM game_participants WHERE username = '" . $clean['username'] . "' AND time_left = 0";
    $gid = performQ($query, 'appgames');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($gid, $clean['username']);
    //==================
    //debug code end
    //==================
    
    $dist_array = array();
    
    $query = "SELECT username FROM game_participants WHERE game_id = " . $gid[0]['game_id'] . " AND time_left = 0";
    $res = performQ($query, 'appgames');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($res, $clean['username']);
    //==================
    //debug code end
    //==================
    
    //determine if i'm "it"
    $query = "SELECT currently_it FROM users WHERE username = '" . $clean['username'] . "'";
    $am_i_it = performQ($query, 'appusers');
    //==================
    //debug code start
    //==================
    debug_query($query, $clean['username']);
    debug_results($am_i_it, $clean['username']);
    //==================
    //debug code end
    //==================
    
    if($am_i_it[0]['currently_it'] === "1") {
        //i'm it, determine 1st closest player
        $dist_closest = NULL;
        foreach($res as $x)  {
            if($x['username'] === $clean['username'])   {
                //obv our distance will be 0
                continue;
            }
            
            $query = "SELECT current_lat, current_lng FROM users WHERE username = '" . $x['username'] . "'";
            $r = performQ($query, 'appusers');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($r, $clean['username']);
            //==================
            //debug code end
            //==================
            
            $dist = distance($r[0]['current_lat'], $r[0]['current_lng'], $clean['lat'], $clean['lng']);
            
            if($dist_closest === NULL || $dist < $dist_closest)    {
                $dist_closest = $dist;
                $dist_array['dist'] = $dist_closest;
                $dist_array['closest_lat'] = $r[0]['current_lat'];
                $dist_array['closest_lng'] = $r[0]['current_lng'];
            }
        }
    }
    else    {
        //i'm not it
        foreach($res as $x)  {
            $query = "SELECT current_lat, current_lng, currently_it FROM users WHERE username = '" . $x['username'] . "'";
            $r = performQ($query, 'appusers');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($r, $clean['username']);
            //==================
            //debug code end
            //==================
            
            if($r[0]['currently_it'] !== "1")   {
                continue;
            }
            else    {
                break;
            }
        }
        
        $dist = distance($r[0]['current_lat'], $r[0]['current_lng'], $clean['lat'], $clean['lng']);
        $dist_array['dist'] = $dist;
        $dist_array['closest_lat'] = $r[0]['current_lat'];
        $dist_array['closest_lng'] = $r[0]['current_lng'];
    }
    
    //==================
    //debug code start
    //==================
    debug_results($dist_array, $clean['username']);
    //==================
    //debug code end
    //==================
    //==================
    //debug code start
    //==================
    if(DEBUG_FLAG)  {
        $dmsg = $clean['username'] . " get_dist_from_it STOP\n\n";
        debug_log($dmsg, $clean['username']);
    }
    //==================
    //debug code end
    //==================    

    return $dist_array;
}











?>
