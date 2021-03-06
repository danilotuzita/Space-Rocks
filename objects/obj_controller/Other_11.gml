/// @description Handle Controller input
accept = gamepad_button_check_pressed(device, inp_accept);
cancel = gamepad_button_check_pressed(device, inp_cancel);
pause  = gamepad_button_check_pressed(device, inp_pause);
select = gamepad_button_check_pressed(device, inp_select);

up   = gamepad_button_check(device, inp_up);
down = gamepad_button_check(device, inp_down);
up_pressed   = gamepad_button_check_pressed(device, inp_up);
down_pressed = gamepad_button_check_pressed(device, inp_down);
left  = gamepad_button_check(device, inp_left);
right = gamepad_button_check(device, inp_right);

fire1 = gamepad_button_check(device, inp_fire1);
fire2 = gamepad_button_check(device, inp_fire2);
fire2_pressed  = gamepad_button_check_pressed(device, inp_fire2);
fire2_released = gamepad_button_check_released(device, inp_fire2);
fire3 = gamepad_button_check(device, inp_fire3);

dash = gamepad_button_check(device, inp_dash);
dash_pressed  = gamepad_button_check_pressed(device, inp_dash);
dash_released = gamepad_button_check_released(device, inp_dash);

leftX = gamepad_axis_value(device, inp_axisLh);
leftY = gamepad_axis_value(device, inp_axisLv);
rightX = gamepad_axis_value(device, inp_axisRh);
rightY = gamepad_axis_value(device, inp_axisRv);

leftAngle  = point_direction(0, 0, leftX, leftY);
rightAngle = point_direction(0, 0, rightX, rightY);
leftIntensity  = sqrt(leftY * leftY + leftX * leftX);
rightIntensity = sqrt(rightY * rightY + rightX * rightX);

if (not controller_active) // if controller is not active
    controller_active = // checking if user is using the controller
        fire1 || fire2 || fire3 || dash || 
        accept || cancel || pause || select||
        up    || down  || left   || right ||
        leftX || leftY || rightX || rightY;