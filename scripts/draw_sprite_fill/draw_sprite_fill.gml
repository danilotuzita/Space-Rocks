/// @param spr
/// @param sub_spr
/// @param pos_x
/// @param pos_y
/// @param scale_x
/// @param scale_y
/// @param rot
/// @param color
/// @param alpha
/// @param progress
/// @param dir (quadrants) [ 0: > | 1: ^ | 2: < | 3: v ]
var spr = argument0, sub_spr = argument1, pos_x = argument2, pos_y = argument3, scale_x = argument4, scale_y = argument5, rot = argument6, color = argument7, alpha = argument8, progress = argument9, dir = argument10;

var spr_width = sprite_get_width(spr);
var spr_height = sprite_get_height(spr);

progress = max(min(progress, 1), 0); // limiting progress to 0 and 1

if (between(dir, 0, 3, true))
    dir = wrap(dir, round(rot / 90), 0, 3); // fixing direction for "rotated" sprites
switch (dir)
{
    case FILL_LEFT_RIGHT: // left to right
        var left = 0;
        var top = 0;
        var width = round(spr_width * progress);
        var height = spr_height;
        var final_x = pos_x;
        var final_y = pos_y;
        break;
    case FILL_BOTTOM_UP: // bottom to up
        var left = 0;
        var top = ratio(progress, 0, 1, spr_height, 0);
        var width = spr_width;
        var height = spr_height - top;
        var final_x = pos_x;
        var final_y = pos_y + (top * scale_y);
        break;
    case FILL_RIGHT_LEFT: // right to left
        var left = ratio(progress, 0, 1, spr_width, 0);
        var top = 0;
        var width = spr_width - left;
        var height = spr_height;
        var final_x = pos_x + (left * scale_x);
        var final_y = pos_y;
        break;
    case FILL_UP_BOTTOM: // top to bottom
        var left = 0;
        var top = 0;
        var width = spr_width;
        var height = round(spr_height * progress);
        var final_x = pos_x;
        var final_y = pos_y;
        break;
    case FILL_CENTER_OUT: // center to outside
        var left   = round(ratio(progress, 0, 1, spr_width / 2, 0));
        var top    = round(ratio(progress, 0, 1, spr_height / 2, 0));
        var width  = round(ratio(progress, 0, 1, 0, spr_width));
        var height = round(ratio(progress, 0, 1, 0, spr_height));
        var final_x = pos_x + (left * scale_x);
        var final_y = pos_y - (top * scale_y);
        break;
    default:
        return;
        break;
}

rot = rot mod 360; // normalizing to 360
// offsetting depending on the rotation (for some reason draw_sprite_general rotates the sprite over it's pivot (top-left (not sprite origin)))
final_x += spr_width * scale_x * between(rot, 180, 270, true); // offsetting right if rotation is on 2nd and 3rd quadrants
final_y += spr_height * scale_y * between(rot, 90, 180, true); // offsetting  down if rotation is on 1st and 2nd quadrants

draw_sprite_general(
    spr, sub_spr,
    left, top,        // cut sprite top-left in "canvas"
    width, height,    // cut sprite size
    final_x, final_y, // sprite "canvas" pos
    scale_x, scale_y, rot,
    color, color, color, color,
    alpha
);
