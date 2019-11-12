
for(var j = 0; j < dash_trail_amount; j++) // for every trail sprite
{
	draw_sprite_ext(sprite_index, -1,
		dash_trail_grid[# 0, j], dash_trail_grid[# 1, j], 1, 1,
		dash_trail_grid[# 2, j], image_blend, dash_trail_grid[# 3, j]
	);
	
	dash_trail_grid[# 3, j] -= dash_trail_fade; // decrease trail opacity
}

if(fire2_charge > 0)
{
	var animation_tick = tick / room_speed;
	var charge_ratio = (fire2_charge / fire2_max_charge) * 0.9;
	var w = wave(0.0 + charge_ratio, 0.1 + charge_ratio, 0.5, 0);
	
	// TODO: THINK OF A BETTER SOLUTION FOR THE SCALING
	var s = .75 + ((w - 0.9) * (fire2_charge == fire2_max_charge));
	
	draw_sprite_ext(spr_eff_charge_up, animation_tick * 4,
		x, y, s, s,
		image_angle + (fire2_charge * 45), // spin sprite
		image_blend, image_alpha * w
	);
	draw_text(room_width / 2, 20, string(round(fire2_charge)));
}

// draw main player
draw_sprite_ext(sprite_index, -1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);

/*
// draw main player
draw_sprite_ext(spr_burst, -1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);
*/
