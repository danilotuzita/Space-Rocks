/// @param srf
/// @param pos_x
/// @param pos_y
/// @param progress
/// @param dir (quadrants) [ 0: > | 1: ^ | 2: < | 3: v ]
/// @param width_progress_start
/// @param width_progress_end
/// @param height_progress_start
/// @param height_progress_end
var srf = argument0, pos_x = argument1, pos_y = argument2, progress = argument3, dir = argument4, width_progress_start = argument5, width_progress_end = argument6, height_progress_start = argument7, height_progress_end = argument8;

var scale_x = 1;
var scale_y = 1;
var color = c_white;
var alpha = 1;
var sfr_width = surface_get_width(srf);
var sfr_height = surface_get_height(srf);

progress = max(min(progress, 1), 0); // limiting progress to 0 and 1

switch (dir)
{
    case FILL_LEFT_RIGHT: // left to right
        var left = 0;
        var top = 0;
        var width = round(sfr_width * progress);
        var height = sfr_height;
        var final_x = pos_x;
        var final_y = pos_y;
        break;
    case FILL_BOTTOM_UP: // bottom to up
        var left = 0;
        var top = ratio(progress, 0, 1, sfr_height, 0);
        var width = sfr_width;
        var height = sfr_height - top;
        var final_x = pos_x;
        var final_y = pos_y + (top * scale_y);
        break;
    case FILL_RIGHT_LEFT: // right to left
        var left = ratio(progress, 0, 1, sfr_width, 0);
        var top = 0;
        var width = sfr_width - left;
        var height = sfr_height;
        var final_x = pos_x + (left * scale_x);
        var final_y = pos_y;
        break;
    case FILL_UP_BOTTOM: // top to bottom
        var left = 0;
        var top = 0;
        var width = sfr_width;
        var height = round(sfr_height * progress);
        var final_x = pos_x;
        var final_y = pos_y;
        break;
    case FILL_CENTER_OUT: // center to outside
        var left   = round(ratio(progress,  width_progress_start,    width_progress_end,  sfr_width / 2, 0));
        var top    = round(ratio(progress, height_progress_start,   height_progress_end, sfr_height / 2, 0));
        var width  = round(ratio(progress,  width_progress_start,    width_progress_end,              0, sfr_width));
        var height = round(ratio(progress, height_progress_start,   height_progress_end,              0, sfr_height));
        var final_x = pos_x + (left * scale_x);
        var final_y = pos_y + (top * scale_y);
        break;
    case FILL_MIDDLE_TOP_BOTTOM: // middle to top and bottom
        var left   = 0;
        var top    = round(ratio(progress, 0, 1, sfr_height / 2, 0));
        var width  = sfr_width;
        var height = round(ratio(progress, 0, 1, 0, sfr_height));
        var final_x = pos_x;
        var final_y = pos_y + (top * scale_y);
        break;
    default:
        return;
        break;
}

draw_surface_part_ext(
    srf,
    left, top,        // cut sprite top-left in "canvas"
    width, height,    // cut sprite size
    final_x, final_y, // sprite "canvas" pos
    scale_x, scale_y,
    color, alpha
);
