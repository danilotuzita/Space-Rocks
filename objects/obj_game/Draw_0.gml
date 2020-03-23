switch(room)
{
	//#region Start Menu
	case room_start_menu:
		break;
	//#endregion
	//#region Game
	case room_game:	
		break;
	//#endregion
	//#region Win
	case room_win:
		// TODO: maybe there will be no winning, idk
		draw_text_custom_align(
			room_width / 2, 200,
			"YOU WIN!!!",
			3, c_green, 1,
			fa_center, DEFAULT_VALIGN
		);
		draw_text_custom_align(
			room_width / 2, 200,
			">> PRESS ENTER TO RESTART <<",
			1, c_white, 1,
			fa_center, DEFAULT_VALIGN
		);
		break;
	//#endregion
	//#region Lose
	case room_lose:
		// TODO: Player explodes, white out, start again at the main menu
		draw_text_custom_align(
			room_width / 2, 200,
			"GAME OVER",
			3, c_red, 1,
			fa_center, DEFAULT_VALIGN
		);
		draw_text_custom_align(
			room_width / 2, 250,
			"FINAL SCORE: " + string(score),
			1, c_white, 1,
			fa_center, DEFAULT_VALIGN
		);
		draw_text_custom_align(
			room_width / 2, 300,
			">> PRESS ENTER TO RESTART <<",
			1, c_white, 1,
			fa_center, DEFAULT_VALIGN
		);
		break;
	//#endregion
	case room_space:
		break;
	default:
		break;
}
