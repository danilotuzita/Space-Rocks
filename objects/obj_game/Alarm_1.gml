/// @description Asteroid spawning
if(room != room_game)
	exit;

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
spawn_asteroid(xx, yy);

alarm[1] = room_speed * asteroid_spawn_rate;