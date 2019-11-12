
draw_sprite_ext(sprite_index, (asteroid_health * crack) - 1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);

image_alpha += .5;
