/// @param x1
/// @param x2
/// @param y1
/// @param y2
/// @param c
/// @param outline_tickness
/// @param alpha
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, c = argument4, outline_tickness = argument5, alpha = argument6;

var corner = outline_tickness / 2;
x1 -= corner;
y1 -= corner;
x2 += corner;
y2 += corner;

var old_alpha = draw_get_alpha();
draw_set_alpha(alpha);
draw_line_width_color(x1 + corner, y1, x2 - corner, y1, outline_tickness, c, c); // top
draw_line_width_color(x1, y1 + corner, x1, y2 - corner, outline_tickness, c, c); // left
draw_line_width_color(x1 + corner, y2, x2 - corner, y2, outline_tickness, c, c); // bottom
draw_line_width_color(x2, y1 + corner, x2, y2 - corner, outline_tickness, c, c); // right
draw_set_alpha(old_alpha);
