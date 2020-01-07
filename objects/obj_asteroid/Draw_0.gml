var spr = (asteroid_health / asteroid_max_health) * sprite_get_number(sprite_index);

draw_sprite_ext(sprite_index, (spr * crack) - 1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);

image_alpha += .5;
