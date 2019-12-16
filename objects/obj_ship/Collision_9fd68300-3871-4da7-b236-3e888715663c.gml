if(invincible || is_dead > 0 || dashing) return; // if is invincible / dead / dashing: do nothing

lives--; // decreases lives
repeat(10) spawn_debris(x, y); // creates debris
audio_play_sound(snd_die, 1, false); // play death sound

if(lives < 0) // check lose condition
	obj_game.alarm[0] = 2 * room_speed; // TODO: check this (this is calling game_restart())
else
	event_user(0); // resets the player (zeroes cooldowns and set is_dead)

set_rumble_ext(.1, .1, 5, 0, 0, 0, .01);