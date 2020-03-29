/// @param i
var i = argument0;

var spr = buttons[# i, 8];
var sub_spr = buttons[# i, 3];
var _x = buttons[# i, 1];
var _y = buttons[# i, 2];
var w = buttons[# i, 5];
var h = buttons[# i, 6];
var scl = buttons[# i, 7];
var rot = buttons[# i, 9];
var c = buttons[# i,  0] == cursor_pos ? // if the cursor_pos is the button index
        buttons[# i, 11] : // button acc color
        main_hud.hud_color;
var a = main_hud.hud_alpha;
var text = buttons[# i, 13];

// draw_rectangle(_x, _y, _x + w, _y + h, true);

var spr_w = sprite_get_width(spr) * scl;
var spr_h = sprite_get_height(spr) * scl;
if(buttons[# i, 4])  // if has outline
{
    var margin_w = div_floor(spr_w, 4);
    var margin_h = div_floor(spr_h, 4);
    draw_rectangle_outline(_x, _y, _x + spr_w + margin_w, _y + spr_h + margin_h, c, scl, main_hud.hud_alpha);
}

var offset_w = 2 * scl;
var offset_h = 2 * scl;
draw_line_ext(_x - offset_w, _y + h - offset_h, _x + w + offset_w, _y + h - offset_h, c, scl, main_hud.hud_alpha);

var spr_xoffset = sprite_get_xoffset(spr) * scl + offset_h;
var spr_yoffset = sprite_get_yoffset(spr) * scl + offset_w;

draw_sprite_ext(
    spr, sub_spr,
    _x + spr_xoffset, _y + spr_yoffset,
    scl, scl,
    rot, c,
    a
);

var fnt_scl = scl + 1;
draw_text_custom_align(_x + w, _y + div_floor(spr_w, 2) - scl, text, fnt_scl, c, a, fa_right, fa_center);

return true;
