/// @description Reset all controller variables
window_mouse_set(room_center_x, room_center_y);
cursor_x = room_center_x; // position of the fake cursor
cursor_y = room_center_y; 
mouse_delta_x = 0; // how much the cursor moved this tick
mouse_delta_y = 0;
mouse_moved = false; // was the mouse moved this tick?
cursor_relative_angle = 90; // angle of the cursor relative to the ship position

pause_timeout = 0;
up = false; up_pressed = false;
down = false; down_pressed = false;
left = false;
right = false;

accept = false;
cancel = false;
pause = false;
select = false;

// Rectangular coordinates
leftX = 0;
leftY = 0;
rightX = 0;
rightY = 0;
// Polar coordinates
leftAngle = 0;
leftIntensity = 0;
rightAngle = 0;
rightIntensity = 0;

// Sticks
leftDeadZone = .5;
rightDeadZone = .5;