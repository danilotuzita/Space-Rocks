// in each room
switch(room)
{
	case room_start_menu:
		// if the asteroid has been destroyed and the alarm has not been set
		if(!instance_exists(start_asteroid) && alarm[GAME.ALARM_SWITCH_ROOMS] <= 0)
		{
			next_room = room_game;
			alarm[GAME.ALARM_SWITCH_ROOMS] = 3 * room_speed; // sets the start game alarm
		}
		break;
	case room_game:
		if(score >= 99991000) // win condition
		{
			score = 1000;
			room_goto(room_win);
			audio_play_sound(snd_win, 1, false);
		}
		if(lives <= 0) // lose condition
		{
			room_goto(room_lose);
			audio_play_sound(snd_lose, 1, false);
		}
	case room_win:
	case room_lose:
		// if player presses enter or 'A'
		if(keyboard_check_pressed(vk_enter) || gamepad_button_check(0, gp_face1))
			game_restart(); // restarts the game
		break;
	case room_space:
		break;
}