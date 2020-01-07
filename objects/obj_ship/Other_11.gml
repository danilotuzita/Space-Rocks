/// @description Decrease Lives
lives--; // increases a life

if(lives < 0) // check lose condition
	obj_game.alarm[GAME.ALARM_RESTART_GAME] = 2 * room_speed; // TODO: check this (this is calling game_restart())
else
{
	is_dead = is_dead_delay * room_speed; // set as dead
	event_user(SHIP.EVENT_RESET); // resets the player (zeroes cooldowns)
}