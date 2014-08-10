<?php
/*
 this file removes the sent in user from the game.  returns 1 on success and 0 on failure
 but i dont think i'll ever use the failure heh
*/

require_once "/home/segstsh5/40forty_app_source/functions.php";


/**
 *clean inputs start
 */
$clean['username'] = clean_username($_GET['username']);
$clean['timestamp'] = time();

if(is_null($clean['username']))  {
    log_error("lat, lng or username was null in quit_game.php");
    exit;
}

//==================
//debug code start
//==================
if(DEBUG_FLAG)  {
    $dmsg = "\n+++++++++++++\nQuit game API Start\n+++++++++++++\n";
    debug_log($dmsg, $clean['username']);
}
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

//remove them
$query = "UPDATE game_participants SET time_left = " . $clean['timestamp'] . " WHERE username = '" . $clean['username'] . "' AND time_left = 0";
performQ($query, 'appgames');
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
//==================
//debug code end
//==================

$query = "SELECT currently_it FROM users WHERE username = '" . $clean['username'] . "'";
$wasit = performQ($query, 'appusers');

//reset their vars
$query = "UPDATE users SET currently_it = 0, entered_tag_zone_flag = 0, time_entered_tag_zone = 0 WHERE username = '" . $clean['username'] . "'";
performQ($query, 'appusers');
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
//==================
//debug code end
//==================

$query = "SELECT uID FROM users WHERE username = '" . $clean['username'] . "'";
$uid = performQ($query, 'appusers');
//==================
//debug code start
//==================
debug_results($uid, $clean['username']);
debug_query($query, $clean['username']);
//==================
//debug code end
//==================
$uid = $uid[0]['uID'];

//penalize the player for leaving if they were it.
if($wasit[0]['currently_it'] === "1")	{
	$query = "INSERT INTO user_statistics (uID, statistic, time_stamp) VALUES (" . $uid . ", 'quit_when_it', " . $clean['timestamp'] . ")";
	performQ($query, 'appusers');

	$query = "INSERT INTO user_statistics (uID, statistic, value, time_stamp) VALUES (" . $uid . ", 'score_change', '-50', " . $clean['timestamp'] . ")";
	performQ($query, 'appusers');

	$query = "SELECT overall_score FROM user_ranks WHERE uID = " . $uid . " AND game_type = 'free_for_all'";
	$tagger_stat = performQ($query, "appusers");

	$tagger_stat = $tagger_stat[0]['overall_score'] - 50;

	$query = "UPDATE user_ranks SET overall_score = " . $tagger_stat . " WHERE uID = " . $uid . " AND game_type = 'free_for_all'";
	performQ($query, "appusers");
}


$t_arr = get_score_for_update_iphone($uid);

$resp['resp'] = '1';
$resp = array_merge($t_arr, $resp);

echo json_encode($resp);

//==================
//debug code start
//==================
if(DEBUG_FLAG)  {
    $dmsg = "\n+++++++++++++\nQuit game API End\n+++++++++++++\n";
    debug_log($dmsg, $clean['username']);
}
//==================
//debug code end
//==================
exit;
?>
