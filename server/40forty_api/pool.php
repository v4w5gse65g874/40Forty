<?php
/*
 * this file is everything the pool can do.  it adds users to the pool, removes them, and sends back pinged responses to the
 * desired device for updates
 *
 * $_GET params required:
 *
 * username
 * action
 * 
 * ADD:
 *   timestamp
 *   lat
 *   lng
 *   radius
 *   game_type
 *   game_difficulty
 *
 * PING:
 */

require_once "/home/segstsh5/40forty_app_source/functions.php";


/**
 *clean inputs start
 */
$clean['username'] = clean_username($_GET['username']);
$command = $_GET['action'];

//get the uID
$query = "SELECT uID FROM users WHERE username = '" . $clean['username'] . "'";
$res = performQ($query, 'appusers');
$clean['uid'] = $res[0]['uID'];

if(is_null($clean['username'])) {
    log_error('in pool.php username was null');
    exit;
}

//clean the json array.
$resp['resp'] = '';
$resp['a'] = 'a';

switch($command) {
    case 'remove':
	$query = "DELETE FROM pending_pool WHERE uID_of_user = " . $clean['uid'];
        performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        //==================
        //debug code end
        //==================

	break;
    case 'add':
        $clean['time'] = clean_timestamp($_GET['timestamp']);
        $clean['lat'] = clean_lat_lng($_GET['lat']);
        $clean['lng'] = clean_lat_lng($_GET['lng']);
        $clean['game_type'] = clean_game_type($_GET['game_type']);
        $clean['radius'] = clean_radius($_GET['radius']);
        $clean['game_difficulty'] = clean_game_difficulty($_GET['game_difficulty']);
        
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\nrequest clean array:\n\n";
            foreach($clean as $k => $v) {
                $dmsg .= $k . " => " . $v . "\n";
            }
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\n++++++++++++\npool.php case 'add' for " . $clean['username'] . " starting\n++++++++++++\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        
        //delete all references of that uID's games he's queued up for
        //since we can only have 1 to join anyway
        $query = "DELETE FROM pending_pool WHERE uID_of_user = " . $clean['uid'];
        performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //check to see if i'm already in a game before continuing...
        $query = "SELECT count(1) FROM game_participants WHERE username = '" . $clean['username'] . "' AND time_left = 0";
        $am_i = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($am_i, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //am i already in a game?  what should i do?
        if((int)$am_i[0]['count(1)'] > 0)    {
		$resp['resp'] = 'already_in_game';
            
            //==================
            //debug code start
            //==================
            if(DEBUG_FLAG)  {
                $dmsg = $clean['username'] . " already_in_game";
                debug_log($dmsg, $clean['username']);
            }
            //==================
            //debug code end
            //==================
            //==================
            //debug code start
            //==================
            if(DEBUG_FLAG)  {
                $dmsg = "\n++++++++++++\npool.php case 'add' END for " . $clean['username'] . "\n++++++++++++\n";
                debug_log($dmsg, $clean['username']);
            }
            //==================
            //debug code end
            //==================

		echo json_encode($resp);
            exit;
        }
        
        //now add them        
        $query = "INSERT INTO pending_pool (uID_of_user, latitude, longitude, game_radius_max, game_type, game_difficulty, time_entered_pool) VALUES (" . $clean['uid'] . ", " . $clean['lat'] . ", " . $clean['lng'] . ", " . $clean['radius'] . ", '" . $clean['game_type'] . "', '" . $clean['game_difficulty'] . "', " . $clean['time'] . ")";
        performQ($query, 'appusers');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        //==================
        //debug code end
        //==================
        
        //the response is now going to be 'pending'
	$resp['resp'] = 'pending';
        
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = $clean['username'] . " added to pending_pool, echoed 'pending'";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\n++++++++++++\npool.php case 'add' END for " . $clean['username'] . "\n++++++++++++\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        
        break;
    case 'ping':
        //OUTPUT:
        //will either be a game_id, "locked" or "pong"
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\nrequest clean array:\n\n";
            foreach($clean as $k => $v) {
                $dmsg .= $k . " => " . $v . "\n";
            }
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        //==================
        //debug code start
        //==================
        if(DEBUG_FLAG)  {
            $dmsg = "\n++++++++++++\npool.php case 'ping' for " . $clean['username'] . " starting\n++++++++++++\n";
            debug_log($dmsg, $clean['username']);
        }
        //==================
        //debug code end
        //==================
        
        //see if we've been swept up into a game
        $query = "SELECT game_id FROM game_participants WHERE username = '" . $clean['username'] . "' AND time_left = 0";
        $amiin = performQ($query, 'appgames');
        //==================
        //debug code start
        //==================
        debug_query($query, $clean['username']);
        debug_results($amiin, $clean['username']);
        //==================
        //debug code end
        //==================
        
        if($amiin[0]['game_id'] !== NULL)    {
            //we were swept up in a game.  echo out the game_id and we're done
		$resp['resp'] = $amiin[0]['game_id'];
            
            //==================
            //debug code start
            //==================
            if(DEBUG_FLAG)  {
                $dmsg = $clean['username'] . " was swept up into a game (" . $amiin[0]['game_id'] . ")\n\n";
                debug_log($dmsg, $clean['username']);
            }
            //==================
            //debug code end
            //==================
            //==================
            //debug code start
            //==================
            if(DEBUG_FLAG)  {
                $dmsg = "\n++++++++++++\npool.php case 'ping' END for " . $clean['username'] . "\n++++++++++++\n";
                debug_log($dmsg, $clean['username']);
            }
            //==================
            //debug code end
            //==================

		echo json_encode($resp);
            exit;
        }
        else    {
            //look to see if we've been locked.  if so respond with 'locked'
            $query = "SELECT user_lock FROM pending_pool WHERE uID_of_user = " . $clean['uid'];
            $lock = performQ($query, 'appusers');
            //==================
            //debug code start
            //==================
            debug_query($query, $clean['username']);
            debug_results($lock, $clean['username']);
            //==================
            //debug code end
            //==================
            
            if($lock[0]['user_lock'])   {
                //we're locked.  echo 'locked'
		$resp['resp'] = 'locked';
                
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = $clean['username'] . " is currently locked.\n\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
                
            }
            else    {
                //*******************************
                //if we haven't been swept up into a game lock us up so we don't get sucked into a game while we look for 1
                $query = "UPDATE pending_pool SET user_lock = 1 WHERE uID_of_user = " . $clean['uid'];
                performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================
                
                //*******************************
                //look to see if there are games available (dont forget to delete from pool if we find one)
                $query = "SELECT latitude, longitude, game_radius_max, game_type, game_difficulty FROM pending_pool WHERE uID_of_user = '" . $clean['uid'] . "'";
                $info = performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($info, $clean['username']);
                //==================
                //debug code end
                //==================
                
                $query = "SELECT game_id, latitude_center, longitude_center, game_radius FROM games WHERE end_time = 0 AND game_lock = 0 AND game_type = '" . $info[0]['game_type'] . "' AND game_difficulty = '" . $info[0]['game_difficulty'] . "'";
                $all_possible_games = performQ($query, 'appgames');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                debug_results($all_possible_games, $clean['username']);
                //==================
                //debug code end
                //==================
                
                //so now we'll discover all the games where we're in range based on the game's radius
                $legit_games = discover_legit_games($all_possible_games, $info);
                
                //after that we have a list now of potential games to join.  let's join one based on balancing (number of players in the game)
                if(count($legit_games) > 0) {
                    $game_to_join = 0;
                    $game_to_join = join_to_balance($legit_games);
                    
                    if($game_to_join !== 0) {
                        //==================
                        //debug code start
                        //==================
                        if(DEBUG_FLAG)  {
                            $dmsg = $clean['username'] . " is joining the game " . $game_to_join . ".\n\n";
                            debug_log($dmsg, $clean['username']);
                        }
                        //==================
                        //debug code end
                        //==================
                        
                        //lock it up
                        $query = "UPDATE games SET game_lock = 1 WHERE game_id = " . $game_to_join;
                        performQ($query, 'appgames');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                        
                        //we were successful in finding a game to join
			$resp['resp'] = $game_to_join;
                        //==================
                        //debug code start
                        //==================
                        if(DEBUG_FLAG)  {
                            $dmsg = $clean['username'] . " is joining " . $game_to_join . "\n\n";
                            debug_log($dmsg, $clean['username']);
                        }
                        //==================
                        //debug code end
                        //==================
                        
                        //delete user from pending pool
                        $query = "DELETE FROM pending_pool WHERE uID_of_user = " . $clean['uid'];
                        performQ($query, 'appusers');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                        
                        //add the user to the game participants list
                        $query = "INSERT INTO game_participants (game_id, username, time_joined, time_left) VALUES (" . $game_to_join . ", '" . $clean['username'] . "', " . time() . ", 0)";
                        performQ($query, 'appgames');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                        
                        //unlock the game
                        $query = "UPDATE games SET game_lock = 0 WHERE game_id = " . $game_to_join;
                        performQ($query, 'appgames');
                        //==================
                        //debug code start
                        //==================
                        debug_query($query, $clean['username']);
                        //==================
                        //debug code end
                        //==================
                        
                        //==================
                        //debug code start
                        //==================
                        if(DEBUG_FLAG)  {
                            $dmsg = "\n++++++++++++\npool.php case 'ping' END for " . $clean['username'] . "\n++++++++++++\n";
                            debug_log($dmsg, $clean['username']);
                        }
                        //==================
                        //debug code end
                        //==================

			echo json_encode($resp);
                        exit;
                    }
                }
                
                //*******************************
                //nope, no existing games were found.  look to see if we can create one with an opponent.
                //look to see if anyone is near by to play a game
                //lock myself first (done above)
                //lock and unlock consecutive people
                //(dont forget to delete from pool if we make one)
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = $clean['username'] . " looking for players to start a new game\n\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
                $gid = find_players_to_start_game($info[0], $clean['uid']);
                
                //if gid is 0 that means we didn't find any players to start a game with us
                if($gid !== 0)  {
			$resp['resp'] = $gid;
                    //==================
                    //debug code start
                    //==================
                    if(DEBUG_FLAG)  {
                        $dmsg = $clean['username'] . " new game created: " . $gid . "\n\n";
                        debug_log($dmsg, $clean['username']);
                    }
                    //==================
                    //debug code end
                    //==================
                    //==================
                    //debug code start
                    //==================
                    if(DEBUG_FLAG)  {
                        $dmsg = "\n++++++++++++\npool.php case 'ping' END for " . $clean['username'] . "\n++++++++++++\n";
                        debug_log($dmsg, $clean['username']);
                    }
                    //==================
                    //debug code end
                    //==================

			echo json_encode($resp);
                    exit;
                }
                
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = $clean['username'] . " noone in range, no game created.  unlocking to let others grab me.\n\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
                
                //*******************************
                //if none of the above happened, unlock us to let others swoop us up and echo 'pong'
                $query = "UPDATE pending_pool SET user_lock = 0 WHERE uID_of_user = " . $clean['uid'];
                performQ($query, 'appusers');
                //==================
                //debug code start
                //==================
                debug_query($query, $clean['username']);
                //==================
                //debug code end
                //==================
                
                //yuck, we couldn't find anything.  let the iphone know.
		$resp['resp'] = 'pong';
                //==================
                //debug code start
                //==================
                if(DEBUG_FLAG)  {
                    $dmsg = "\n++++++++++++\npool.php case 'ping' END for " . $clean['username'] . "\n++++++++++++\n";
                    debug_log($dmsg, $clean['username']);
                }
                //==================
                //debug code end
                //==================
            }
        }
        
        break;
    case 'default':
        log_error("bad action $_GET param");
        break;
}

echo json_encode($resp);

exit;
?>
