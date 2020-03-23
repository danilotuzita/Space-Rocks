/// @param i
var i = argument0;

var spr = buttons[# i, 8];
var sub_spr = buttons[# i, 3];
var scl = buttons[# i, 7];
var _x = buttons[# i, 1];
var _y = buttons[# i, 2];
var rot = buttons[# i, 9];
var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
        buttons[# i, 11] : // button acc color
        main_hud.hud_color;

if(buttons[# i, 4]) // if has outline
    draw_rectangle_color_alpha(
        _x, _y, // x, y
        _x + buttons[# i, 5], _y + buttons[# i, 6], // x + width, y + height
        c, c, c, c, true, main_hud.hud_alpha
    );

draw_sprite_ext(
    spr, sub_spr,
    _x, _y,
    scl, scl,
    rot, c,
    main_hud.hud_alpha
);

var fnt_scale = scl + 1;
// var d = debug_control(0, .5);
draw_text_custom_align(
    _x + 18 * fnt_scale, _y - 3 * fnt_scale, // don't even
    string(global.player.inv.items[# i, 0]),
    fnt_scale, c,
    main_hud.hud_alpha,
    fa_center, DEFAULT_VALIGN
);

return true;
