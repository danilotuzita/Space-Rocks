/// @description Decrease Lives
lives--; // increases a life

if(lives < 0) // check lose condition
	obj_game.alarm[0] = 2 * room_speed; // TODO: check this (this is calling game_restart())
else
	event_user(SHIP.EVENT_RESET); // resets the player (zeroes cooldowns and set is_dead)