switch(room)
{
    case room_game:
        #region kin
        draw_sprite_ext(spr_icons, 0, 20, 20, 1, 1, 0, hud_color, hud_alpha);
        draw_text(37, 14, string(score));
        draw_sprite_ext(spr_icons, 1, 20, 40, 1, 1, 0, hud_color, hud_alpha);
        draw_text(37, 44, string(lives));
        #endregion
        
        #region dashbar
        var dash_ratio = dashbar_height;
        
        dash_ratio *= parent.dashing ?
            ratio( // if is dashing
                parent.dash_time,
                0, parent.dash_max_time * room_speed,
                1, 0
            )
            :
            ratio( // if isn't dashing
                parent.dash_cooldown,
                0, parent.dash_cooldown_rate * room_speed,
                0, 1
            );
        
        debug(dash_ratio / dashbar_height);
        
        // I'm not sure why this works
        // REF: https://forum.yoyogames.com/index.php?threads/solved-fill-up-effect-drawing.40400/
        draw_sprite_part_ext( // drawing fill
            dashbar_sprite, 1,
            0, dash_ratio,
            dashbar_width, dashbar_height,
            10, 150 + dash_ratio,
            1, 1,
            hud_color, hud_alpha - .2
        );
        
        // drawing outline
        draw_sprite_ext(
            dashbar_sprite, 0,
            10, 150,
            1, 1, 0,
            hud_color, hud_alpha
        );
        #endregion
        
        break;
    default:
        break;
}