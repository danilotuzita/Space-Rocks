/// @description Handle Mouse input
window_set_cursor(cr_none); // disable OS mouse cursor
mouse_moved = false; // i want this to be false if cursor is not "locked"
mouse_delta_x = room_center_x - mouse_x;
mouse_delta_y = room_center_y - mouse_y;

if(keyboard_check(vk_lalt)) // if pressing Lalt return mouse control to the OS
{
    if(keyboard_check_pressed(vk_lalt)) // if first tick pressing Lalt
        window_mouse_set(cursor_x, cursor_y); // move the cursor to the position of the fake cursor
    return window_set_cursor(cr_default);
} 

if(window_has_focus()) // lock mouse when window is foucused
{
    window_mouse_set(room_center_x, room_center_y); // move OS mouse to the center of the window
    cursor_x = clamp(cursor_x - mouse_delta_x, 0, room_width);  // limiting the fake cursor to the window space
    cursor_y = clamp(cursor_y - mouse_delta_y, 0, room_height);
}
else // let the OS handle but continue moving the fake cursor
{
    window_set_cursor(cr_default);
    cursor_x = mouse_x;
    cursor_y = mouse_y;
}

cursor_relative_angle = point_direction(parent.x, parent.y, cursor_x, cursor_y);
mouse_moved = mouse_delta_x != 0 && mouse_delta_y != 0;