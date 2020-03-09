/// @param x1
/// @param x2
/// @param y1
/// @param y2
/// @param c1
/// @param c2
/// @param c3
/// @param c4
/// @param outline
/// @param alpha
var x1 = argument0, x2 = argument1, y1 = argument2, y2 = argument3, c1 = argument4, c2 = argument5, c3 = argument6, c4 = argument7, outline = argument8, alpha = argument9;

var old_alpha = draw_get_alpha();
draw_set_alpha(alpha);
draw_rectangle_color(x1, x2, y1, y2, c1, c2, c3, c4, outline);
draw_set_alpha(old_alpha);
