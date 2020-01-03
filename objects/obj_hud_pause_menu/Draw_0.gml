shader_set(shd_gaussian_vertical);
draw_sprite(sprite_index, -1, 0, 0);
shader_reset();
shader_set(shd_gaussian_horizontal);
draw_sprite_ext(sprite_index, -1, 0, 0, 1, 1, 0, c_white, .5);
shader_reset();