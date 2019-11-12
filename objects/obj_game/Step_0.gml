
switch(room)
{
	case room_start_menu:
		if(!instance_exists(start_asteroid) && alarm[3] <= 0)
			alarm[3] = 1 * room_speed;
		break;
	case room_game:
		if(score >= 99991000)
		{
			score = 1000;
			room_goto(room_win);
			audio_play_sound(snd_win, 1, false);
		}
		if(lives <= 0)
		{
			room_goto(room_lose);
			audio_play_sound(snd_lose, 1, false);
		}
	case room_win:
	case room_lose:
		if(keyboard_check_pressed(vk_enter) || gamepad_button_check(0, gp_face1))
			game_restart();
		break;
}