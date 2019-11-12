switch(room)
{
	//#region Start Menu
	case room_start_menu:
		
		var c = c_yellow;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width / 2, 100,
			"SPACE ROCKS",
			3, 3,
			0,
			c, c, c, c, 1
		);
		
		draw_text(
			room_width / 2, 200,
@"Score 1000 points to win!
UP: Move
LEFT/RIGHT: Change direction
SPACE: Shoot

>> PRESS ENTER TO START <<"
		);
		
		draw_set_halign(fa_left);
		
		break;
	//#endregion
	//#region Game
	case room_game:	
		draw_text(20, 20, "SCORE: "+ string(score));
		draw_text(20, 50, "LIVES: "+ string(lives));
		break;
	
	//#endregion
	//#region Win
	case room_win:
			
		var c = c_green;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width / 2, 200,
			"YOU WIN!!!",
			3, 3,
			0,
			c, c, c, c, 1
		);
		
		draw_text(
			room_width / 2, 400,
			">> PRESS ENTER TO RESTART <<"
		);
		
		draw_set_halign(fa_left);
		
		break;
	//#endregion
	//#region Lose
	case room_lose:
		var c = c_red;
		
		draw_set_halign(fa_center);
		
		draw_text_transformed_color(
			room_width / 2, 150,
			"GAME OVER",
			3, 3,
			0,
			c, c, c, c, 1
		);
		
		draw_text(
			room_width / 2, 250,
			"FINAL SCORE: " + string(score)
		);
		
		draw_text(
			room_width / 2, 300,
			">> PRESS ENTER TO RESTART <<"
		);
		
		draw_set_halign(fa_left);
		
		break;
	//#endregion
}