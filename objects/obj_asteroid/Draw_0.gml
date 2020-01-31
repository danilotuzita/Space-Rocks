
if(dramatic_anim) {
	draw_sprite_ext(spr, 0,
		x, y, 1, 1,
		image_angle, image_blend, image_alpha
	);
	return;
}

var subimg = crack // asteroid can crack
		   * (asteroid_health / asteroid_max_health) // health percentage
		   * sprite_get_number(sprite_index); // number of cracks phases the sprite has (subimages)

draw_sprite_ext(sprite_index, subimg - 1,
	x, y, 1, 1,
	image_angle, image_blend, image_alpha
);

// when the asteroid is hit the bullet sets the asteroid alpha as 0 to give a hit feedback
image_alpha += .5;
