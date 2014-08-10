<?php
//remember to update the database VARCHARs if i change these
define(USERNAME_MAX_LENGTH, 50);
define(PASSWORD_MIN_LENGTH, 3);
define(API_ERROR_FILE_PATH, "/home/segstsh5/40forty_app_logs/api_errors");

//if 1, debug flag will trigger debugs appended to this log
define(DEBUG_FLAG, FALSE);
define(DEBUG_LOG_FILE_PATH, "/home/segstsh5/40forty_app_logs/");

/**************
 **START FFA **
 **************/
//maximum amount of players that can be in a game
define(MAX_FFA_GAME_PARTICIPANTS, 10);
//minimum amount of players that need to be in a game
define(MIN_FFA_GAME_PARTICIPANTS, 2);
//ffa round time in seconds
define(FFA_ROUND_TIME, 1200); // <-- 20 minutes
//ffa cooldown time in seconds
define(FFA_ROUND_COOLDOWN, 60); // <-- 1 minute
//number of "IT" players in any specific game type
define(FFA_IT_COUNT, 1); // <-- free_for_all
//distance, in meters, when a player is considered within tagging zone for given difficulty
define(FFA_TAGGING_ZONE_EASY_METERS, 100);
//number of seconds tagger must be in zone before opponent is considered tagged for given difficulty
define(FFA_SECONDS_REQUIRED_TO_TAG_EASY, 0);
//amount to award it player outlasting the 20 minute timer
define(FFA_OUTLAST_POINTS, 30);
/**************
 ****END FFA **
 **************/
?>
