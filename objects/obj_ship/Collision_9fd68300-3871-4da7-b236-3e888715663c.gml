if(invincible || is_dead > 0 || dashing) return;

lives--;
repeat(10) spawn_debris(x, y);
audio_play_sound(snd_die, 1, false);

if(lives < 0)
	obj_game.alarm[0] = 2 * room_speed;
else
	event_user(0);