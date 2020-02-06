if (!setup) return;

if (!controller.controller_active)
    draw_sprite_ext(main_hud.aim_cursor_sprite, HUD_CURSOR_POINTER,
        controller.cursor_x, controller.cursor_y,
        3, 3,
        1, main_hud.hud_color, main_hud.hud_alpha
    );
