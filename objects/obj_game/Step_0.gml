
if(keyboard_check_pressed(vk_enter) || gamepad_button_check(0, gp_face1))
{
	switch(room)
	{
		case room_start_menu:
			room_goto(room_game);
			break;
		case room_win:
		case room_lose:
			game_restart();
			break;
	}
}

if(room == room_game)
{
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
}