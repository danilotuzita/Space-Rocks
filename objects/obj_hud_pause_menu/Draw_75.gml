if (!parent.controller_active)
    draw_sprite_ext(aim_cursor_sprite, HUD_CURSOR_POINTER,
        parent.cursor_x, parent.cursor_y,
        3, 3,
        1, hud_color, hud_alpha - .2
    );
