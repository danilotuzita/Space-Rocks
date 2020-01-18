parent = -1;
hud = -1;
pause_timeout_delay = 1; //.3 * room_speed; // how many tick to be able to pause again
dead_zone = .05;
active = true;
room_center_x = window_get_width() / 2;
room_center_y = window_get_height() / 2;

cursor_x = room_center_x; // position of the fake cursor
cursor_y = room_center_y; 

mouse_set_to_center = false;

controller_active = true; // if the player is actively using the controller

gamepad_set_axis_deadzone(device, dead_zone);
event_user(CONTROLLER.EVENT_RESET_ALL);

// Rumble
rumble_handler = instance_create_layer(0, 0, "Instances", obj_rumble_handler); rumble_handler.parent = self;