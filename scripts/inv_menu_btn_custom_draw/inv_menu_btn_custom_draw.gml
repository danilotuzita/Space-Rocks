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

draw_set_color(c);
draw_text_transformed(_x + (16 + 2) * scl, _y - 2 * scl, string(global.player.inv.items[# i, 0]), scl, scl, 0);
draw_set_color(c_white);

return true;
