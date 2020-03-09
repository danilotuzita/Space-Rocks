var x1 = parent.x + 4;
var y1 = parent.y + 24;
var x2 = x1 + ratio(parent.quitting_timer, 0, 3 * room_speed, 0, 30);
var y2 = y1 + 2;
draw_rectangle_color_alpha(
    x1, y1,
    x2, y2,
    hud_color, hud_color, hud_color, hud_color,
    false, hud_alpha
);