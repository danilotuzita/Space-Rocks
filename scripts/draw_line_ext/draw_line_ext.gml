/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param color
/// @param thickness
/// @param alpha
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, color = argument4, thickness = argument5, alpha = argument6;

var old_alpha = draw_get_alpha();
draw_set_alpha(alpha);
draw_line_width_color(x1, y1, x2, y2, thickness, color, color);
draw_set_alpha(old_alpha);
