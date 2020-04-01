/// @param i
var i = argument0;

var left = -1;
var right = 1;

var text = "DEFAULT TEXT";
var side = left;

var pointer_line_add_x = 10;
var pointer_line_add_y = 40;

var p = global.player;
switch(buttons[# i, 0])
{
    case -1: // FIRE1
        text = string(p.fire1_dmg) + " dmg " +
               string(p.fire1_cooldown_rate * room_speed) + "/s";
        side = right;
        pointer_line_add_y = 20;
        break;
    case -2: // FIRE3
        text = string(p.fire3_bullet_count) + "*" +
               string(p.fire3_dmg) + " dmg " +
               string(p.fire3_cooldown_rate * room_speed) + "/s";
        side = left;
        break;
    case -3: // FIRE2
        text = "1~" + string(p.fire2_max_charge) + " dmg " +
               string(p.fire2_cooldown_rate * room_speed) + "/s";
        side = right;
        pointer_line_add_x = 15;
        pointer_line_add_y = 25;
        break;
    case -4: // DASH
        text = "100 max " +
               string(p.dash_consumption_rate * room_speed * 100) + "W/s";
        side = left;
        break;
    default:
        break;
}

buttons[# i, 13] = text;

if(buttons[# i, 0] == -3)
    move_button_debug(i, 8, 8);

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

var spr_w = sprite_get_width(spr) * scl;
var spr_h = sprite_get_height(spr) * scl;
if(buttons[# i, 4] && false)  // if has outline
{
    var margin_w = div_floor(spr_w, 4);
    var margin_h = div_floor(spr_h, 4);
    draw_rectangle_outline(_x, _y, _x + spr_w + margin_w, _y + spr_h + margin_h, c, scl, main_hud.hud_alpha);
}

var offset_w = 2 * scl;
var offset_h = 2 * scl;

var line_x1 = _x - offset_w;
var line_x2 = _x + w + offset_w;
var line_y  = _y + h - offset_h;
draw_line_ext(line_x1, line_y, line_x2, line_y, c, 1, main_hud.hud_alpha); // drawing main line (where the text is placed uppon)

var line_x3 = (side == left) ? line_x1 : line_x2;
var line_x4 = line_x3 + side * pointer_line_add_x;
draw_line_ext( // drawing pointing line (the diagonal one)
    line_x3, line_y,
    line_x4, line_y + pointer_line_add_y,
    c, 1, main_hud.hud_alpha
);

var spr_xoffset = sprite_get_xoffset(spr) * scl + offset_h;
var spr_yoffset = sprite_get_yoffset(spr) * scl + offset_w;

if false
    draw_sprite_ext(
        spr, sub_spr,
        _x + spr_xoffset, _y + spr_yoffset,
        scl, scl,
        rot, c,
        a
    );

var fnt_scl = scl + 1;
var alingnment = (side == left) ? fa_right : fa_left;
var text_x = _x + w * (side == left);
var text_y = _y + h - fnt_scl;
draw_text_custom_align(text_x, text_y, text, fnt_scl, c, a, alingnment, fa_bottom);

return true;


// return draw_button_text(i);
