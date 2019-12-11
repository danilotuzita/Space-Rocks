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
        var sa = global.player.last_asteroid;
        
        if (instance_exists(sa))
        {
            var _x = sa.x;
            var _y = sa.y;
            var sizex = sa.sprite_width / aim_sprite_width;
            var sizey = sa.sprite_height / aim_sprite_height;
            
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


if(DEBUG)
    draw_text(0, room_height - 10, string(d));

