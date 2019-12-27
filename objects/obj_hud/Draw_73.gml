switch(room)
{
    case room_start_menu:
        var sa = global.game.start_asteroid;
        
        if (instance_exists(sa))
        {
            var _x = sa.x;
            var _y = sa.y;
            var sizex = sa.sprite_width;
            var sizey = sa.sprite_height;
            
            draw_sprite_ext(
                aim_sprite, 0,
                _x, _y,
                1, 1,
                1, hud_color,
                1
            );
        }
        break;
    case room_game:
        var la = parent.last_asteroid;
        
        if (instance_exists(la))
        {
            var _x = la.x;
            var _y = la.y;
            var sizex = la.sprite_width / aim_sprite_width;
            var sizey = la.sprite_height / aim_sprite_height;
            
            draw_sprite_ext(
                aim_sprite, 0,
                _x, _y,
                sizex, sizey,
                1, hud_color,
                1
            );
        }
        
        break;
    default:
        break;
}


if(HUD_DEBUG)
    draw_text(50, 50, string(d));

