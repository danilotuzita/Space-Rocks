var cooldown_rate = ratio(
    parent.fire1_cooldown, 0, parent.fire1_cooldown_rate * room_speed,
    1, 0
);

draw_sprite_ext(
    icons_sprite, HUD_ICON_FIRE1_HINT,
    hint_fire1_x + x_shake_bkg, hint_fire1_y + y_shake_bkg,
    2, 2, 1,
    hud_color, hud_alpha * cooldown_rate
);
