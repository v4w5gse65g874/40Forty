<?php

require_once "/home/segstsh5/40forty_app_source/functions.php";


$resp['resp'] = '';
$resp['a'] = 'a';

//clean the username that the user wishes to create...if it was a bad attempt (dirty), resultant will be null.
//GET PARAMS
$clean['username'] = clean_username($_GET['urnam3z']);
$clean['password'] = clean_password($_GET['pass3w0rdt']);
$clean['email'] = clean_email($_GET['eyyimail']);

if(is_null($clean['username']) || is_null($clean['password']) || is_null($clean['email'])) {
    //just exit cuz the iphone app checks usernames, this is probably a malicious attempt
    log_error("either username, password or email was null in create_user.php");
    exit;
}

//check to see if it meets my requirements
if(strlen($clean['username']) > USERNAME_MAX_LENGTH)   {
    //username too long
    $resp['resp'] = 'badusername';
    $resp['reason'] = 'Username too long';
    
    echo json_encode($resp);
    exit;
}

if(!eregi('^[a-zA-Z0-9_]*$', $clean['username']))    {
    //username not alphanumeric
    $resp['resp'] = 'badusername';
    $resp['reason'] = 'Username contains invalid characters';
    
    echo json_encode($resp);
    exit;
} 
 
if(strlen($clean['password']) < PASSWORD_MIN_LENGTH)   {
    //password too short
    $resp['resp'] = 'badusername';
    $resp['reason'] = 'Password too short';
    
    echo json_encode($resp);
    exit;    
}

//check my username database for doubles before adding it
$query = "SELECT count(1) FROM users WHERE username = '" . $clean['username'] . "'";
$res = performQ($query, "appusers");

if($res[0]['count(1)'] !== '0')  {
    //return error to iphone username exists
    $resp['resp'] = "usernametaken";
    echo json_encode($resp);
    
    exit;
}

//everything was good, insert it
$query = "INSERT INTO users (username, password, email_address) VALUES ('" . $clean['username'] . "', '" . $clean['password'] . "', '" . $clean['email'] . "')";
performQ($query, "appusers");

$query = "SELECT uID FROM users WHERE username = '" . $clean['username'] . "'";
$user_uid = performQ($query, "appusers");





/*****************************
 ***************************
 EVERY new game type that i make for this app should be added here, and a trickler run for currently EXISTING users
 to give them a rank section!!!
 ***************************
 ***************************/
$starting_score = 1000;
$starting_rank = "newbie";

$query = "INSERT INTO user_ranks (uID, game_type, overall_score, undertitle) VALUES (" . $user_uid[0]['uID'] . ", 'free_for_all', " . $starting_score . ", '" . $starting_rank . "')";
performQ($query, "appusers");
//==================
//debug code start
//==================
debug_query($query, $clean['username']);
//==================
//debug code end
//==================
/*****************************
 ***************************
 EVERY new game type that i make for this app should be added here, and a trickler run for currently EXISTING users
 to give them a rank section!!!
 ***************************
 ***************************/




$t_arr = get_score_for_update_iphone($user_uid[0]['uID']);

$resp['resp'] = "ok";
$resp = array_merge($t_arr, $resp);

echo json_encode($resp);

exit;
?>
