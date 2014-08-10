<?php
require_once "/home/segstsh5/40forty_app_source/functions.php";

$clean['username'] = clean_username($_GET['usernam3z']);
$clean['password'] = clean_password($_GET['passw0rdt']);
$clean['game_type'] = clean_game_type($_GET['game_type']);

$resp = array();

if($clean['username'] === NULL || $clean['password'] === NULL)  {
    $resp['resp'] = 'Username or password was invalid';
    echo json_encode($resp);
    
    exit;
}
else    {
    $query = "SELECT count(1), uID FROM users WHERE username = '" . $clean['username'] . "' AND password = '" . $clean['password'] . "'";
    $res = performQ($query, "appusers");

    if($res[0]['count(1)'] === '1')  {
        //we're logged in!
        $uid = $res[0]['uID'];
        
        $t_arr = get_score_for_update_iphone($uid);
        
        $resp['resp'] = 'okweloggedin';
        $resp = array_merge($t_arr, $resp);
        
        echo json_encode($resp);
        
        exit;
    }
}

$resp['resp'] = 'incorrectuserorpass';
echo json_encode($resp);

exit;
?>
