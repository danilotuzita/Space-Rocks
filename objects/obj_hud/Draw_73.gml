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
        if (draw_aim)
        {
            var iter = yld_find_ore(0, parent.searching_ore);
            while(yld_find_ore(iter))
            {
                var ast = iter[0];
                if (instance_exists(ast))
                {
                    var _x = ast.x;
                    var _y = ast.y;
                    var sizex = 1; //la.sprite_width / aim_sprite_width;
                    var sizey = 1; //la.sprite_height / aim_sprite_height;
                    
                    draw_sprite_ext(
                        aim_sprite, 0,
                        _x, _y,
                        sizex, sizey,
                        1, hud_color,
                        1
                    );
                }
            }
        }
        break;

    default:
        break;
}

