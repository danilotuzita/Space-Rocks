draw_sprite_ext(
    misc_sprite, HUD_MISC_KIN,
    kin_x + x_shake_bkg, kin_y + y_shake_bkg,
    kin_scale, kin_scale, 0,
    hud_color, hud_alpha
);

draw_text_custom(45 + x_shake_bkg, 13 + y_shake_bkg, string(score), 2, hud_color, hud_alpha);
