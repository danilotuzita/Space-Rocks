// shake on this tick
x_shake_bkg = parent._x * hud_mvt_shake_bkg;
y_shake_bkg = parent._y * hud_mvt_shake_bkg;
x_shake_fgr = parent._x * hud_mvt_shake_fgr;
y_shake_fgr = parent._y * hud_mvt_shake_fgr;

if(draw_kin)
    hud_draw_kin();

if(draw_lives)
    hud_draw_lives();

if(draw_dashbar)
    hud_draw_dashbar();

if(draw_f2chargebar)
    hud_draw_f2chargebar();

if(draw_fire1hint)
    hud_draw_fire1hint();

if(draw_quitting && parent.quitting)
    hud_draw_quitting();

if(draw_searching)
    hud_draw_searching();

if(draw_cursor)
    hud_draw_cursor();


// d = "X: " + string(controller.cursor_x) + " | Y: " + string(controller.cursor_y);

/*if(HUD_DEBUG)
    draw_text(50, 50, string(d));
*/

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

