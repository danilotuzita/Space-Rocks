/// @description Handle Mouse input
window_set_cursor(cr_none); // disable OS mouse cursor
mouse_moved = false; // i want this to be false if cursor is not "locked"
mouse_delta_x = room_center_x - window_mouse_get_x();// mouse_x;
mouse_delta_y = room_center_y - window_mouse_get_y();// mouse_y;

if(keyboard_check(vk_lalt)) // if pressing Lalt return mouse control to the OS
{
    if(keyboard_check_pressed(vk_lalt)) // if first tick pressing Lalt
        window_mouse_set(cursor_x, cursor_y); // move the cursor to the position of the fake cursor
    return window_set_cursor(cr_default);
} 

if(window_has_focus()) // lock mouse when window is foucused
{
    window_mouse_set(room_center_x, room_center_y); // move OS mouse to the center of the window
    cursor_x = clamp(cursor_x - mouse_delta_x, 0, window_get_width());  // limiting the fake cursor to the window space
    cursor_y = clamp(cursor_y - mouse_delta_y, 0, window_get_height());
}
else // let the OS handle but continue moving the fake cursor
{
    window_set_cursor(cr_default);
    cursor_x = window_mouse_get_x();
    cursor_y = window_mouse_get_y();
}

cursor_relative_angle = point_direction(
    parent.x - camera_get_view_x(view_camera[0]), parent.y - camera_get_view_y(view_camera[0]), // ship's relative position
    cursor_x, cursor_y
);

// hud.d = "sX: " + string(camera_get_view_x(view_camera[0])) + " | sY: " + string(camera_get_view_y(view_camera[0]));

mouse_moved = mouse_delta_x != 0 && mouse_delta_y != 0;