if(draw_kin)
{
    draw_sprite_ext(icons_sprite, HUD_ICON_KIN, 20, 20, kin_scale, kin_scale, 0, hud_color, hud_alpha);
    draw_text(37, 14, string(score));
}

if(draw_lives)
{
    var half = lives / 2;
    if(lives > lives_max_draw)
    {
        half = lives_max_draw / 2;
        // TODO: come up with a way to indicate that the player has more lives than is shown
    }
    
    for(var i = -half; i < half; i++)
        draw_sprite_ext(
            icons_sprite, HUD_ICON_LIVES,
            (screen_center + (icons_sprite_half_width * lives_scale)) +
            (i * lives_icon_spread * 2), lives_y,
            lives_scale, lives_scale,
            0, hud_color, hud_alpha
        );
}

if(draw_dashbar)
{
    var dash_ratio = ratio(
        parent.dash_fuel, 0, 1,
        dashbar_height, 1
    );
    
    // REF: https://forum.yoyogames.com/index.php?threads/solved-fill-up-effect-drawing.40400/
    draw_sprite_part_ext( // drawing fill
        dashbar_sprite, HUD_DASHBAR_FILL,
        0, dash_ratio,
        dashbar_width, dashbar_height,
        dashbar_x, dashbar_y + dash_ratio,
        1, 1,
        hud_color, hud_alpha - .2
    );
    
    draw_sprite_ext( // drawing outline
        dashbar_sprite, HUD_DASHBAR_OUTLINE,
        dashbar_x, dashbar_y,
        1, 1, 
        0, hud_color, hud_alpha
    );
}

// draw_rectangle(screen_center, 0, screen_center, room_height, false);

// draw_text(10, room_height - 20, string(parent.dash_fuel));
// draw_text(10, room_height - 40, string(parent.move_speed));