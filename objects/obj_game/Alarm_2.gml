/// @description Power up spawning
if(room != room_game) exit;

// randomizing the power up
if(choose(0, 1) == 0)
{
	// go down the side
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// go top or bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);	
}
spawn_life(xx, yy);

alarm[GAME.ALARM_POWERUP_SPAWN] = room_speed * power_up_spawn_rate;