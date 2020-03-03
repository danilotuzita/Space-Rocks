var dash_ratio = ratio(
    parent.dash_fuel, 0, 1,
    dashbar_height, 1
);

// REF: https://forum.yoyogames.com/index.php?threads/solved-fill-up-effect-drawing.40400/
draw_sprite_part_ext( // drawing fill
    dashbar_sprite, HUD_DASHBAR_FILL,
    0, dash_ratio,
    dashbar_width, dashbar_height,
    dashbar_x + x_shake_bkg, dashbar_y + dash_ratio + y_shake_bkg,
    1, 1,
    hud_color, hud_alpha - .2
);

draw_sprite_ext( // drawing outline
    dashbar_sprite, HUD_DASHBAR_OUTLINE,
    dashbar_x + x_shake_bkg, dashbar_y + y_shake_bkg,
    1, 1, 
    0, hud_color, hud_alpha
);

var x_full_shake = x_shake_fgr;
var y_full_shake = y_shake_fgr;

if (parent.dashing)
{
    var w = wave(-1, 1, .1, 0, parent.tick);
    x_full_shake += w; // if its dashing shake it left and right more
    // y_full_shake += w;
}

draw_sprite_ext( // drawing icon
    dashbar_sprite, HUD_DASHBAR_ICON,
    dashbar_x + x_full_shake, dashbar_y + y_full_shake,
    1, 1, 
    0, hud_color, hud_alpha + .2
);
