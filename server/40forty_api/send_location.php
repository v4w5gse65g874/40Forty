<?php
/*
 always spits out json
*/

/*
 *this file is called by the iphone, which then updates the user's current_lat, current_lng
 *to then determine, based on who's it, if they're within the boundary
 *which then will ping back to the iphone whether to show an "in bounds" message
 *with a countdown timer before tagging
 *
 *this will also check to see if others are currently trying to tag someone
 *and relay a message back
 */
require_once "/home/segstsh5/40forty_app_source/functions.php";


/**
 *clean inputs start
 */
$clean['lat'] = clean_lat_lng($_GET['lat']);
$clean['lng'] = clean_lat_lng($_GET['lng']);
$clean['username'] = clean_user($_GET['username']);
$clean['timestamp'] = time();
$action = $_GET['action'];

//==================
//debug code start
//==================
if(DEBUG_FLAG)  {
    $dmsg = "\n+++++++++++++\nSend Location API Start\n+++++++++++++\n";
    debug_log($dmsg, $clean['username']);
}
//==================
//debug code end
//==================

if(is_null($clean['lat']) || is_null($clean['lng']) || is_null($clean['username']))  {
    log_error("lat, lng or username was null.");
    exit;
}
/**
 *clean inputs end
 */

/**
 *update lat/lng for uID start
 */
$query = "SELECT uID FROM users WHERE username = '" . $clean['username'] . "'";
$user_uid = performQ($query, "appusers");
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
debug_results($user_uid, $clean['username']);
//==================
//debug code end
//==================
$user_uid = (int)$user_uid[0]['uID'];

$query = "UPDATE users SET current_lat = " . $clean['lat'] . ", current_lng = " . $clean['lng'] . " WHERE uID = " . $user_uid . " AND username = '" . $clean['username'] . "'";
performQ($query, "appusers");
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
//==================
//debug code end
//==================
/**
 *update lat/lng for uID end
 */

/**
 *insert into user_check_ins table start
 **/
$query = "INSERT INTO user_check_ins (username, lat, lng, time_checked_in) VALUES ('" . $clean['username'] . "', " . $clean['lat'] . ", " . $clean['lng'] . ", " . $clean['timestamp'] . ")";
performQ($query, 'appusers');
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
//==================
//debug code end
//==================
/**
 *insert into user_check_ins table end
 **/

switch($action) {
    case 'get_round':
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
        $dmsg = $clean['username'] . " get_round START\n\n";
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

        $query = "SELECT current_round FROM games WHERE game_id = " . $gid[0]['game_id'];
        $res = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($res, $clean['username']);
        //==================
        //debug code end
        //==================
        
        $resp['resp'] = $res[0]['current_round'];
	$resp['a'] = 'a';
	echo json_encode($resp);
        
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = $clean['username'] . " get_round STOP\n\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        exit;
        break;
    case 'get_gid':
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
            $dmsg = $clean['username'] . " get_gid START\n\n";
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
        
        $info = array();
        $info['current_gid'] = $gid[0]['game_id'];
        
        echo json_encode($info);
        
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = $clean['username'] . " get_gid STOP\n\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        break;
    case 'get_all':
        //for modularity
        $temp_resp = send_location_api_get_all($clean);
        $resp = array();
        foreach ($temp_resp as $k => $v)    {
            $resp[$k] = $v;
        }
        
        //i can't use JSON_FORCE_OBJECT it is only available on php 5.3, my server is on 5.2.5
        $resp['a'] = '';
        echo json_encode($resp);
        
        break;
    case 'get_dist_from_it':
        //for modularity
        $temp_resp = send_location_api_get_dist_from_it($clean);
        
        echo json_encode($temp_resp);
        
        break;
    case 'main_game':
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = $clean['username'] . " main_game START\n\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        //clean the slate
        $resp['round_time_start'] = '';
        $resp['game_status'] = '';
        $resp['round_status'] = '';
        $resp['time_left_in_cooldown'] = '';
        $resp['round_end_reason'] = '';
        $resp['round_num'] = '';
        $resp['how_many_in_my_zone'] = '';
        $resp['whose_in_my_zone'] = '';
        $resp['i_entered_tag_zone'] = '';
        $resp['time_entered_zone'] = '';
        $resp['server_time'] = time();
        $resp['taggee'] = '';
        //end slate cleanage
        
        $clean['round_num'] = clean_round_number($_GET['round_num']);
        
        //==================
        //debug code start
        //==================
        debug_results($resp, $clean['username']);
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        debug_results($clean, $clean['username']);
        //==================
        //debug code end
        //==================        
        //get the game type i'm in so as to go off the rules of that game
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
        $query = "SELECT game_type FROM games WHERE game_id = " . $gid[0]['game_id'];
        $game_type = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($game_type, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //I don't think it matter if these are called outside of the blocks, since
        //we want to draw them out anyway no matter what game type it is
        $temp_resp = send_location_api_get_all($clean);
        foreach ($temp_resp as $k => $v)    {
            $resp[$k] = $v;
        }
        $temp_resp = send_location_api_get_dist_from_it($clean);
        foreach ($temp_resp as $k => $v)    {
            $resp[$k] = $v;
        }
        
        /****************************
         *START FFA BLOCK
         *****************************/
	//xxx todo - this should be updated to whatever the game's difficulty is.  easy for now cuz thats the only implementation
        $resp['tagging_radius'] = FFA_TAGGING_ZONE_EASY_METERS;
        
        if($game_type[0]['game_type'] === 'free_for_all')   {
            //the following queries/what's returned is based off of that game type
            $resp['round_time_length'] = FFA_ROUND_TIME;
            
            //1 - are there enough players to play to stay in this game?
            /**************************
             *start block 1
             **************************/
            //first check to see if game is still open
            $query = "SELECT end_time FROM games WHERE game_id = " . $gid[0]['game_id'];
            $end_time = performQ($query, 'appgames');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($end_time, $clean['username']);
            //==================
            //debug code end
            //==================            
            //if game is still open, check it for legitimacy
            if((int)$end_time[0]['end_time'] === 0) {
                $resp['game_status'] = 'in_progress';
            }
            else    {
                //game was terminated due to too few players, remove myself
                $query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0 WHERE username = '" . $clean['username'] . "'";
                performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================
                $query = "UPDATE game_participants SET time_left = " . $clean['timestamp'] . " WHERE game_id = " . $gid[0]['game_id'] . " AND username = '" . $clean['username'] . "'";
                performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================                
                $resp['game_status'] = 'terminated';
                echo json_encode($resp);
                //==================
                //debug code start
                //==================
                debug_results($resp, $clean['username']);
                //==================
                //debug code end
                //==================
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
                exit;
            }
            
            //check to see if there's too few players to continue.  if so, respond with "terminated" and end the game.  remove myself from the game.
            $query = "SELECT count(1) FROM game_participants WHERE game_id = " . $gid[0]['game_id'] . " AND time_left = 0";
            $player_game_count = performQ($query, 'appgames');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($cur_round, $clean['username']);
            //==================
            //debug code end
            //==================
            
            if((int)$player_game_count[0]['count(1)'] < MIN_FFA_GAME_PARTICIPANTS)  {
                //terminate the game
                $query = "UPDATE games SET end_time = " . $clean['timestamp'] . " WHERE game_id = " . $gid[0]['game_id'];
                performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================
                
                //game was terminated due to too few players, remove myself
                $query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0 WHERE username = '" . $clean['username'] . "'";
                performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================
                $query = "UPDATE game_participants SET time_left = " . $clean['timestamp'] . " WHERE game_id = " . $gid[0]['game_id'] . " AND username = '" . $clean['username'] . "'";
                performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================                
                $resp['game_status'] = 'terminated';
                echo json_encode($resp);
                //==================
                //debug code start
                //==================
                debug_results($resp, $clean['username']);
                //==================
                //debug code end
                //==================
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
                exit;
            }
            
	//check to see if there's an IT player or not, and if not, ensure we're not in cooldown.
	//if there isn't an IT player end the round and set round_end_reason to "noone_is_it" and set correct response
	//check round status, compare what round i'm in
        $query = "SELECT current_round FROM games WHERE game_id = " . $gid[0]['game_id'];
        $cur_round = performQ($query, 'appgames');
 	//==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($cur_round, $clean['username']);
        //==================
        //debug code end
        //==================                    
        //check if there's a cooldown flag
        $query = "SELECT cooldown_flag, round_start FROM game_round_info WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
        $cdown_flag = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($cdown_flag, $clean['username']);
        //==================
        //debug code end
        //==================                    
        if((int)$cdown_flag[0]['cooldown_flag'] === 0)  {
		//ok, we're not in cooldown.  count how many IT players there are, and compare to how many there SHOULD be in this game mode.
		$query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                $usernames = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($usernames, $clean['username']);
                //==================
                //debug code end
                //==================                    
                $query = "SELECT count(1) FROM users WHERE currently_it = 1 AND (username = '";
                $user = array();
                foreach($usernames as $userx)    {
                	$user[] = $userx['username'];
                }
                $user_string = implode("' OR username = '", $user);
                $query .= $user_string . "')";
                $c_it_people = performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($c_it_people, $clean['username']);
                //==================
                //debug code end
                //==================                    

                if((int)$c_it_people[0]['count(1)'] === 0) {
			//nobody's it, and we're not in cooldown.  end the round/set the reason/die out
	                //round should be over
                
        	        //get the lock type
                	$query = "SELECT round_lock FROM game_round_info WHERE gID = " . $gid[0]['game_id'] . " AND round_number = " . $cur_round[0]['current_round'];
	                $rl = performQ($query, 'appgames');
        	        //==================
                	//debug code start
	                //==================
        	        debug_query($query, $clean['username']);
                	debug_results($rl, $clean['username']);
	                //==================
        	        //debug code end
                	//==================                
	                //is round locked?
        	        if((int)$rl[0]['round_lock'] === 0) {
                	    $query = "UPDATE game_round_info SET round_lock = 1 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
	                    performQ($query, 'appgames');
        	            //==================
                	    //debug code start
	                    //==================
        	            debug_query($query, $clean['username']);
                	    //==================
	                    //debug code end
        	            //==================                    
                	    $query = "UPDATE game_round_info SET round_end = " . $clean['timestamp'] . ", round_end_reason = 'noone_is_it' WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
	                    performQ($query, 'appgames');
        	            //==================
                	    //debug code start
	                    //==================
        	            debug_query($query, $clean['username']);
                	    //==================
	                    //debug code end
        	            //==================                    
                	    //or should $cur_round be the round i sent in?!?  i feel like there MIGHT be a round that is skipped.
	                    //to fix this look at current round (this timestamp) start time, previous round start time ($next_round - 1)
        	            //subtract the two.  if diff <=30sec then don't create a new round.
                	    //HERE!  and revert the above query.
	                    $next_round = (int)$cur_round[0]['current_round'] + 1;
        	            $query = "UPDATE games SET current_round = " . $next_round . " WHERE game_id = " . $gid[0]['game_id'];
                	    performQ($query, 'appgames');
	                    //==================
        	            //debug code start
                	    //==================
	                    debug_query($query, $clean['username']);
        	            //==================
                	    //debug code end
	                    //==================                    
        	            $query = "INSERT INTO game_round_info (gID, round_number, round_start, cooldown_flag) VALUES (" . $gid[0]['game_id'] . ", " . $next_round . ", " . $clean['timestamp'] . ", 1)";
                	    performQ($query, 'appgames');
	                    //==================
        	            //debug code start
                	    //==================
	                    debug_query($query, $clean['username']);
        	            //==================
                	    //debug code end
	                    //==================                    
        	            $resp['round_status'] = 'cooldown';
                	    $resp['round_end_reason'] = 'noone_is_it';
	                    $resp['time_left_in_cooldown'] = FFA_ROUND_COOLDOWN;
        	            $resp['round_num'] = $next_round;
                    
                	    //reset those that are in tag zone, the timestamps, currently_it
	                    //i don't want them to know who is it until the cooldown is over
        	            $query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                	    $usernames = performQ($query, 'appgames');
	                    //==================
        	            //debug code start
                	    //==================
	                    debug_query($query, $clean['username']);
        	            debug_results($usernames, $clean['username']);
                	    //==================
	                    //debug code end
        	            //==================                    
                	    foreach($usernames as $q)   {
	                        $query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0, time_entered_tag_zone = 0 WHERE username = '" . $q['username'] . "'";
        	                performQ($query, 'appusers');
                	        //==================
	                        //debug code start
        	                //==================
                	        debug_query($query, $clean['username']);
	                        //==================
        	                //debug code end
                	        //==================
	                    }
                    
        	            //unlock the round
                	    $query = "UPDATE game_round_info SET round_lock = 0 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
	                    performQ($query, 'appgames');
        	            //==================
                	    //debug code start
	                    //==================
        	            debug_query($query, $clean['username']);
                	    //==================
	                    //debug code end
        	            //==================
                	}
		}

	}
 
            /**************************
             *end block 1
             **************************/
            
            //2 - report/update round information before checking ending time
            /**************************
             *start block 2
             **************************/
           if((int)$cur_round[0]['current_round'] === $clean['round_num'])   {
                //round still in progress
                $resp['round_status'] = 'in_progress';
                $resp['round_num'] = $clean['round_num'];
            }
            else    {
                //round is different, set new round number and reason for it ending
                $resp['round_num'] = (int)$cur_round[0]['current_round'];
                
                $query = "SELECT round_end_reason FROM game_round_info WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                $round_end_reason = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($round_end_reason, $clean['username']);
                //==================
                //debug code end
                //==================        
                $resp['round_end_reason'] = $round_end_reason[0]['round_end_reason'];
                
                $resp['round_status'] = 'in_progress';
            }
            
           if((int)$cdown_flag[0]['cooldown_flag'] === 1)  {
                //the cooldown flag is active
                $resp['round_status'] = 'cooldown';
                $resp['time_left_in_cooldown'] = (((int)$cdown_flag[0]['round_start']) + FFA_ROUND_COOLDOWN) - time();
                
                //get the lock type
                $query = "SELECT round_lock FROM game_round_info WHERE gID = " . $gid[0]['game_id'] . " AND round_number = " . $cur_round[0]['current_round'];
                $rl = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($rl, $clean['username']);
                //==================
                //debug code end
                //==================                        
                //lock the round, unlock it after block 3.  if lock was 0
                if((int)$rl[0]['round_lock'] === 0) {
                    $query = "UPDATE game_round_info SET round_lock = 1 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================
                }
                
                //if <= 0, round should start - add round start time to keep things right
                if($resp['time_left_in_cooldown'] <= 0 && (int)$rl[0]['round_lock'] === 0) {
                    $query = "UPDATE game_round_info SET cooldown_flag = 0, round_start = " . $clean['timestamp'] . " WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================        
                    $resp['round_status'] = 'in_progress';
                    $resp['time_left_in_cooldown'] = 0;
                    
                    $query = "UPDATE game_round_info SET round_lock = 0 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                            
                    //make someone it
                    determine_who_is_it($gid[0]['game_id']);
                }
                else    {
                    //cooldown is still going on
                    
                    //get the round_end_reason for the previous round
                    $query = "SELECT round_end_reason FROM game_round_info WHERE round_number = " . ($cur_round[0]['current_round'] - 1) . " AND gID = " . $gid[0]['game_id'];
                    $rer = performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($rer, $clean['username']);
                    //==================
                    //debug code end
                    //==================                            
                    
                    $resp['round_end_reason'] = $rer[0]['round_end_reason'];
                    
                    //unlock the round
                    $query = "UPDATE game_round_info SET round_lock = 0 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                            
                    echo json_encode($resp);
                    //==================
                    //debug code start
                    //==================
                    debug_results($resp, $clean['username']);
                    //==================
                    //debug code end
                    //==================
                    //==================
                    //debug code start
                    //==================
                    if(DEBUG_FLAG)  {
                        $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
                        debug_log($dmsg, $clean['username']);
                    }
                    //==================
                    //debug code end
                    //==================
                    exit;
                }
            }
            /**************************
             *end block 2
             **************************/
            
            //3 - did the round run out of time? *** TRIGGERS END OF ROUND ***
            /**************************
             *start block 3
             **************************/
            $query = "SELECT round_start FROM game_round_info WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
            $r_start = performQ($query, 'appgames');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($r_start, $clean['username']);
            //==================
            //debug code end
            //==================            
            $resp['round_time_start'] = $r_start[0]['round_start'];
            
            if(($clean['timestamp'] - ((int)$r_start[0]['round_start'])) >= FFA_ROUND_TIME) {
                //round should be over
                
                //get the lock type
                $query = "SELECT round_lock FROM game_round_info WHERE gID = " . $gid[0]['game_id'] . " AND round_number = " . $cur_round[0]['current_round'];
                $rl = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($rl, $clean['username']);
                //==================
                //debug code end
                //==================                
                //is round locked?
                if((int)$rl[0]['round_lock'] === 0) {
                    $query = "UPDATE game_round_info SET round_lock = 1 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $query = "UPDATE game_round_info SET round_end = " . $clean['timestamp'] . ", round_end_reason = 'out_of_time' WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    

		//get the round start time
		$query = "SELECT round_start FROM game_round_info WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
		$r_start1 = performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($r_start1, $clean['username']);
                    //==================
                    //debug code end
                    //==================
		$r_start1 = $r_start1[0]['round_start'];
	
                    //or should $cur_round be the round i sent in?!?  i feel like there MIGHT be a round that is skipped.
                    //to fix this look at current round (this timestamp) start time, previous round start time ($next_round - 1)
                    //subtract the two.  if diff <=30sec then don't create a new round.
                    //HERE!  and revert the above query.
                    $next_round = (int)$cur_round[0]['current_round'] + 1;
                    $query = "UPDATE games SET current_round = " . $next_round . " WHERE game_id = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $query = "INSERT INTO game_round_info (gID, round_number, round_start, cooldown_flag) VALUES (" . $gid[0]['game_id'] . ", " . $next_round . ", " . $clean['timestamp'] . ", 1)";
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $resp['round_status'] = 'cooldown';
                    $resp['round_end_reason'] = 'out_of_time';
                    $resp['time_left_in_cooldown'] = FFA_ROUND_COOLDOWN;
                    $resp['round_num'] = $next_round;
                    
                    //reset those that are in tag zone, the timestamps, currently_it
                    //i don't want them to know who is it until the cooldown is over
                    $query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                    $usernames = performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($usernames, $clean['username']);
                    //==================
                    //debug code end
                    //==================
                    foreach($usernames as $q)   {
			$query = "SELECT currently_it FROM users WHERE username = '" . $q['username'] . "'";
			$user_outlast = performQ($query, 'appusers');
			//==================
			//debug code start
			//==================
			debug_query($query, $clean['username']);
			debug_results($user_outlast, $clean['username']);
			//==================
			//debug code end
			//==================       

			if($user_outlast[0]['currently_it'] === '1')	{
				//we found him, lets give him points
				$query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES (" . $user_uid . ", 'score_change', " . $gid[0]['game_id'] . ", " . $cur_round[0]['current_round'] . ", " . FFA_OUTLAST_POINTS . ", " . $clean['timestamp'] . ")";
				performQ($query, "appusers");
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================

			 	$query = "SELECT overall_score FROM user_ranks WHERE uID = " . $user_uid . " AND game_type = 'free_for_all'";
				$tagger_stat = performQ($query, "appusers");
				//==================
				//debug code start
				//==================
				debug_query($query, $clean['username']);
				debug_results($user_outlast, $clean['username']);
				//==================
				//debug code end
				//==================       

				$tagger_stat = $tagger_stat[0]['overall_score'] + FFA_OUTLAST_POINTS;

				$query = "UPDATE user_ranks SET overall_score = " . $tagger_stat . " WHERE uID = " . $user_uid . " AND game_type = 'free_for_all'";
				performQ($query, "appusers");
	                        //==================
        	                //debug code start
                	        //==================
                        	debug_query($query, $clean['username']);
	                        //==================
        	                //debug code end
                	        //==================
 
				$query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES (" . $user_uid . ", 'outlasted_taggers', " . $gid[0]['game_id'] . ", " . $cur_round[0]['current_round'] . ", " . FFA_OUTLAST_POINTS . ", " . $clean['timestamp'] . ")";
				performQ($query, 'appusers');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================
			}             
 
                        $query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0, time_entered_tag_zone = 0 WHERE username = '" . $q['username'] . "'";
                        performQ($query, 'appusers');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                    }

                    //unlock the round
                    $query = "UPDATE game_round_info SET round_lock = 0 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                    performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    //==================
                    //debug code end
                    //==================
                }
            }
            /**************************
             *end block 3
             **************************/
            
            /**************************
             *start block 4/4a/5
             **************************/
            //this whole block can only happen if our round_status is "in_progress"
            if($resp['round_status'] === 'in_progress') {
                //am i it?
                $query = "SELECT currently_it FROM users WHERE username = '" . $clean['username'] . "'";
                $ami = performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($ami, $clean['username']);
                //==================
                //debug code end
                //==================                
                //get game difficulty
                $query = "SELECT game_difficulty FROM games WHERE game_id = " . $gid[0]['game_id'];
                $game_difficulty = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($game_difficulty, $clean['username']);
                //==================
                //debug code end
                //==================                
                if((int)$ami[0]['currently_it'] === 1)  {
                    //i am it :(
                    
                    //is someone in my zone?
                    $query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                    $usernames = performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($usernames, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $query = "SELECT count(1), username FROM users WHERE currently_it = 0 AND entered_tag_zone_flag = 1 AND time_entered_tag_zone > 0 AND (username = '";
                    $user = array();
                    foreach($usernames as $userx)    {
                        $user[] = $userx['username'];
                    }
                    $user_string = implode("' OR username = '", $user);
                    $query .= $user_string . "')";
                    $in_my_zone = performQ($query, 'appusers');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($in_my_zone, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    if((int)$in_my_zone[0]['count(1)'] > 1) {
                        //theres more than 1 person in my zone, just report back how many are in it
                        $resp['how_many_in_my_zone'] = $in_my_zone[0]['count(1)'];
                    }
                    elseif((int)$in_my_zone[0]['count(1)'] === 1) {
                        //only 1 person, respond with their username and value of 1
                        $resp['how_many_in_my_zone'] = 1;
                        $resp['whose_in_my_zone'] = $in_my_zone[0]['username'];
                    }
                    else    {
                        //noones in my zone
                        echo json_encode($resp);
                        //==================
                        //debug code start
                        //==================
                        debug_results($resp, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                        //==================
                        //debug code start
                        //==================
                        if(DEBUG_FLAG)  {
                            $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
                            debug_log($dmsg, $clean['username']);
                        }
                        //==================
                        //debug code end
                        //==================
                        exit;
                    }
                }
                else    {
                    //i am not it!
                    
                    //4 - did i enter a tagging zone - use entered_tag_zone_flag
                    //to determine if a stat should be thrown or not
                    $query = "SELECT entered_tag_zone_flag FROM users WHERE username = '" . $clean['username'] . "'";
                    $didi = performQ($query, 'appusers');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($didi, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                    $usernames = performQ($query, 'appgames');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($usernames, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    $isit = '';
                    $taggeeCARRYOVER = '';
                    $theirLAT = 0;
                    $theirLNG = 0;
                    
                    foreach($usernames as $x)   {
                        $query = "SELECT current_lat, current_lng, currently_it FROM users WHERE username = '" . $x['username'] . "'";
                        $rthey = performQ($query, 'appusers');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        debug_results($rthey, $clean['username']);
                        //==================
                        //debug code end
                        //==================                        
                        if((int)$rthey[0]['currently_it'] === 1)    {
                            $isit = $x['username'];
                            $theirLAT = $rthey[0]['current_lat'];
                            $theirLNG = $rthey[0]['current_lng'];
                            
                            //xxx todo for implementations where there's > 1 it person, this should be an array add instead of a break
                            break;
                        }
                    }
                    
                    //for implementations where there's > 1 it person, this should be an array foreach IT person from array made above to check.
                    if((int)$didi[0]['entered_tag_zone_flag'] === 0)    {
                        //check distance
                        $dist = distance($theirLAT, $theirLNG, $clean['lat'], $clean['lng']);
                        
                        if($game_difficulty[0]['game_difficulty'] === 'easy')    {
                            if($dist <= FFA_TAGGING_ZONE_EASY_METERS)   {
                                //entered tagging zone
                                $query = "UPDATE users SET entered_tag_zone_flag = 1, time_entered_tag_zone = " . $clean['timestamp'] . " WHERE username = '" . $clean['username'] . "'";
                                performQ($query, 'appusers');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                

				$query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES (" . $user_uid . ", 'entered_tagging_zone', " . $gid[0]['game_id'] . ", " . $cur_round[0]['current_round'] . ", 1, " . time() . ")";
                                performQ($query, 'appusers');
		                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================

                                $resp['i_entered_tag_zone'] = 1;
                                $resp['time_entered_zone'] = $clean['timestamp'];
                                
                                //xxx todo this isn't going to work with multiple it players or harder than EASY.
                                $resp['taggee'] = $isit;
                            }
                        }
                    }
                    else    {
                        //4a - conversely, if entered_tag_zone_flag is 1 and i am verified to have left the zone, flip the flag to 0
                        //check distance
                        $dist = distance($theirLAT, $theirLNG, $clean['lat'], $clean['lng']);
                        
                        if($game_difficulty[0]['game_difficulty'] === 'easy')    {
                            if($dist > FFA_TAGGING_ZONE_EASY_METERS)   {
                                //left tagging zone
                                $query = "UPDATE users SET entered_tag_zone_flag = 0, time_entered_tag_zone = 0 WHERE username = '" . $clean['username'] . "'";
                                performQ($query, 'appusers');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                

				$query = "INSERT INTO user_statistics (uID, statistic, game_id_it_happened_in, game_round_it_happened_in, value, time_stamp) VALUES (" . $user_uid . ", 'exited_tagging_zone', " . $gid[0]['game_id'] . ", " . $cur_round[0]['current_round'] . ", 1, " . time() . ")";
                                performQ($query, 'appusers');
		                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================


                                $resp['i_entered_tag_zone'] = 0;
                                $resp['time_entered_zone'] = '';
                            }
                        }                        
                    }
                    
                    //5 - based on difficulty, check timestamp, apply rules for tagging:
                    // Easy - insta-tagged *** TRIGGERS END OF ROUND ***
                    // Medium - needs to be in tagging zone for 3 seconds (only implementing easy for now)
                    $query = "SELECT time_entered_tag_zone FROM users WHERE username = '" . $clean['username'] . "'";
                    $tetz = performQ($query, 'appusers');
                    //==================
                    //debug code start
                    //==================
                    debug_query($query, $clean['username']);
                    debug_results($tetz, $clean['username']);
                    //==================
                    //debug code end
                    //==================                    
                    if((int)$tetz[0]['time_entered_tag_zone'] > 0)   {
                        if($game_difficulty[0]['game_difficulty'] === 'easy')   {
                            $delta = $clean['timestamp'] - $tetz[0]['time_entered_tag_zone'];
                            
                            if($delta >= FFA_SECONDS_REQUIRED_TO_TAG_EASY)  {
                                //a tag has occurred
                                $query = "UPDATE game_round_info SET round_lock = 1 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                                performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================
                                
                                //update scores
                                update_ffa($clean['username'], $resp['taggee'], $gid[0]['game_id'], $cur_round[0]['current_round'], $clean['timestamp']);
                                
                                $reason = $isit . '_tagged_by_' . $clean['username'];
                                
                                $query = "UPDATE game_round_info SET round_end = " . $clean['timestamp'] . ", round_end_reason = '" . $reason . "' WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                                performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
                                //or should $cur_round be the round i sent in?!?  i feel like there MIGHT be a round that is skipped.
                                $next_round = (int)$cur_round[0]['current_round'] + 1;
                                $query = "UPDATE games SET current_round = " . $next_round . " WHERE game_id = " . $gid[0]['game_id'];
                                performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
                                $resp['round_status'] = 'cooldown';
                                $resp['round_end_reason'] = $reason;
                                $resp['time_left_in_cooldown'] = FFA_ROUND_COOLDOWN;
                                $resp['round_num'] = $next_round;
                                
                                //reset those that are in tag zone, the timestamps, currently_it
                                //i don't want them to know who is it until the cooldown is over
                                $query = "SELECT username FROM game_participants WHERE time_left = 0 AND game_id = " . $gid[0]['game_id'];
                                $usernames = performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                debug_results($usernames, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
                                $query = "INSERT INTO game_round_info (gID, round_number, round_start, cooldown_flag) VALUES (" . $gid[0]['game_id'] . ", " . $next_round . ", " . $clean['timestamp'] . ", 1)";
                                performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
                                foreach($usernames as $q)   {
                                    $query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0, time_entered_tag_zone = 0 WHERE username = '" . $q['username'] . "'";
                                    performQ($query, 'appusers');
                                    //==================
                                    //debug code start
                                    //==================
                                    debug_query($query, $clean['username']);
                                    //==================
                                    //debug code end
                                    //==================                                    
                                }
                                
				//set new game center to that which was last tagged
				$query = "UPDATE games SET latitude_center = " . $theirLAT . ", longitude_center = " . $theirLNG . " WHERE game_id = " . $gid[0]['game_id'];
				performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
 
                                //unlock the round
                                $query = "UPDATE game_round_info SET round_lock = 0 WHERE round_number = " . $cur_round[0]['current_round'] . " AND gID = " . $gid[0]['game_id'];
                                performQ($query, 'appgames');
                                //==================
                                //debug code start
                                //==================
                                debug_query($query, $clean['username']);
                                //==================
                                //debug code end
                                //==================                                
                            }
                        }
                    }
                }
            }
            /**************************
             *end block 4/4a/5
             **************************/
        }
        /****************************
         *END FFA BLOCK
         *****************************/
        echo json_encode($resp);
        //==================
        //debug code start
        //==================
        debug_results($resp, $clean['username']);
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = $clean['username'] . " main_game STOP\n\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        break;
}

//==================
//debug code start
//==================
if(DEBUG_FLAG)  {
    $dmsg = "\n+++++++++++++\nSend Location API End\n+++++++++++++\n";
    debug_log($dmsg, $clean['username']);
}
//==================
//debug code end
//==================

exit;
?>
