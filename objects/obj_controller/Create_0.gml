parent = -1;
hud = -1;
is_paused = false;
pause_timeout_delay = 1; //.3 * room_speed; // how many tick to be able to pause again
dead_zone = .05;
active = true;

controller_active = true; // if the player is actively using the controller

gamepad_set_axis_deadzone(device, dead_zone);
last_mouse_x = mouse_x;
last_mouse_y = mouse_y;

event_user(CONTROLLER.EVENT_RESET_ALL);

// Rumble
rumble_handler = instance_create_layer(0, 0, "Instances", obj_rumble_handler); rumble_handler.parent = self;