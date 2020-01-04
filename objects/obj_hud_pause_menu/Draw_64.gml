
for (var i = 0; i < button_options; i++)
{
    var c = i == cursor_pos ?
            c_red :
            c_white;
    
    draw_rectangle_color(
        buttons[# i, 1],                buttons[# i, 2],
        buttons[# i, 1] + button_width, buttons[# i, 2] + button_height,
        c, c, c, c, true
    );
    
    var sw =  string_width(buttons[# i, 0]) / 2;
    var sh = string_height(buttons[# i, 0]) / 2;
    draw_text_color(
        (buttons[# i, 1] +  button_width / 2) - sw,
        (buttons[# i, 2] + button_height / 2) - sh,
        buttons[# i, 0],
        c, c, c, c, 1
    );
}

/*draw_rectangle_color(
    menu_x, menu_y,
    menu_x + menu_width, menu_y + menu_height,
    c_red, c_red, c_red, c_red, true
);*/


var spr = spr_ship;//parent.parent.sprite_index;
var spr_s = 2;
var spr_w = ( sprite_get_width(spr) / 2) * spr_s;
var spr_h = (sprite_get_height(spr) / 2) * spr_s;

var icon_x = ( room_width / 2) + spr_w + 75;
var icon_y = (room_height / 2) + spr_h;

draw_sprite_ext(
    spr, 1,
    icon_x - spr_w, icon_y - spr_h,
    spr_s, spr_s,
    90, c_white,
    1
);
