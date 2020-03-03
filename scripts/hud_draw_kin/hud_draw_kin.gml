
draw_sprite_ext(
    misc_sprite, HUD_MISC_KIN,
    kin_x + x_shake_bkg, kin_y + y_shake_bkg,
    kin_scale, kin_scale, 0,
    hud_color, hud_alpha
);

draw_set_color(hud_color);
draw_text_transformed(50 + x_shake_bkg, 10 + y_shake_bkg, string(score), 2, 2, 0);
draw_set_color(c_white);
