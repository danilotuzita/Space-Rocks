draw_sprite_ext(
    misc_sprite, HUD_MISC_SEARCH_BOX, 
    search_box_x + x_shake_bkg, search_box_y + y_shake_bkg,
    1, 1, 0,
    hud_color, hud_alpha
);
if (between(parent.searching_ore, 0, ORES.COUNT - 1, true))
    draw_sprite_ext(
        ores_sprite, parent.searching_ore,
        search_box_x + 16 + x_shake_fgr, search_box_y + 16 + y_shake_fgr,
        2, 2, 0,
        hud_color, hud_alpha - .2
    );