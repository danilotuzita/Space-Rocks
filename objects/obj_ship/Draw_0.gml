for(var j = 0; j < dash_trail_amount; j++) // for every trail sprite
{
	// draws the trail[j]
	draw_sprite_ext(sprite_index, -1,
		dash_trail_grid[# 0, j], dash_trail_grid[# 1, j], 1, 1,
		dash_trail_grid[# 2, j], image_blend, dash_trail_grid[# 3, j]
	);

	dash_trail_grid[# 3, j] -= dash_trail_fade; // decrease trail opacity
}

if(fire2_charge > 0) // draws the charging fire2 effect
{
	/*
	// ok... this is confusing
	var animation_tick = tick / room_speed;
	var charge_ratio = (fire2_charge / fire2_max_charge) * 0.9;
	var w = wave(0.0 + charge_ratio, 0.1 + charge_ratio, 0.5, 0);

	// TODO: THINK OF A BETTER SOLUTION FOR THE SCALING
	var s = .75 + ((w - 0.9) * (fire2_charge == fire2_max_charge));
	*/
	var alpha, scale, rotation;
	rotation = 3;//; ratio(fire2_charge, 0, 5, 10, 3);

	if(fire2_charge != fire2_max_charge)
	{
		alpha = ratio(fire2_charge, 0, 5,  0,   1);
		scale = ratio(fire2_charge, 0, 5, .25, .5);
		wave_offset = tick;
	} else {
		alpha = 1;
		scale = wave(.5, .75, 1, wave_offset, tick);
	}

	// draws the charging effect sprite
	draw_sprite_ext(spr_eff_charge_up, tick / 16,
		x, y, scale, scale,
		/*image_angle +*/ (tick * rotation),
		image_blend, image_alpha * alpha
	);

}

// draw player sprite
draw_sprite_ext(sprite_index, -1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);
