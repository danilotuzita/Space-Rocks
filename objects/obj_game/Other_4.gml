// on switch rooms event
switch(room)
{
	case room_game:
		if(audio_is_playing(msc_song))
			audio_stop_sound(msc_song);
		audio_play_sound(msc_song, 2, true);
		repeat(starting_asteroids) // generates starting_asteroids
		{	
			var xx = choose(
				irandom_range(0, room_width * .3),
				irandom_range(room_width * .7, room_width)
			);
			var yy = choose(
				irandom_range(0, room_height * .3),
				irandom_range(room_height * .7, room_height)
			);
			spawn_asteroid(xx, yy, -1, -1);
		}
		
		// setting alarms
		alarm[GAME.ALARM_ASTEROID_SPAWN] = room_speed * asteroid_spawn_rate; // asteroid spawning alarm
		alarm[GAME.ALARM_POWERUP_SPAWN]  = room_speed * power_up_spawn_rate; // power up spawning alarm
		break;
	case room_start_menu:
		start_asteroid = spawn_asteroid(250, 64, spr_asteroid_huge, 10);
		with(start_asteroid)
		{
			speed = 0;
			rotation_speed = .3;
			spawn_child = false;
			debris = 50;
			ore = -1;
			dramatic = true;
			value = 0;
		}
		break;
	case room_space:
		break;
	case room_test:
		with(instance_create_layer(0, 0, layer, obj_ship))
		{
			x = room_width + 500;
			y = room_height + 500;
			can_move = false;
			image_angle = point_direction(x, y, room_width / 2, room_height / 2);
			move_towards_point(room_width / 2, room_height / 2, 10);
		}
		break;
	default:
		break;
}