/// @description Quit mission
quitting = false;
quitting_timer = 0;
controller.active = false;
invincible = true;
can_move = false;
wrap_around = false;
dashing = true;
dash_fuel = 10;

move_towards_point(
	x + 500 * cos(radian(image_angle)),
	y - 500 * sin(radian(image_angle)),
	15
);

with(global.game)
	event_user(GAME.EVENT_QUIT_MISSION);