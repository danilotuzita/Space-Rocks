/// @param _x
/// @param _y
/// @param str
/// @param scl
/// @param clr
/// @param alpha
/// @param halign
/// @param valign
var _x = argument0, _y = argument1, str = argument2, scl = argument3, clr = argument4, alpha = argument5, halign = argument6, valign = argument7;

draw_set_halign(halign);
draw_set_valign(valign);

draw_text_transformed_color(
    _x, _y,
    str, scl, scl, 0,
    clr, clr, clr, clr,
    alpha
);
