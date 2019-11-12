
if(room == room_game)
{
	if(audio_is_playing(msc_song))
		audio_stop_sound(msc_song);
	audio_play_sound(msc_song, 2, true);
	repeat(starting_asteroids){	
		var xx = choose(
			irandom_range(0, room_width * .3),
			irandom_range(room_width * .7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height * .3),
			irandom_range(room_height * .7, room_height)
		);
		spawn_asteroid(xx, yy);
	}
	
	alarm[1] = room_speed * asteroid_spawn_rate * (1 + difficulty_multiplier * (score / 100));
	alarm[2] = room_speed * power_up_spawn_rate;
}