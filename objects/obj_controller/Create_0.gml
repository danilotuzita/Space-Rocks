parent = -1;
is_paused = false;
pause_timeout_delay = 1; //.3 * room_speed; // how many tick to be able to pause again
dead_zone = .05;
active = true;

gamepad_set_axis_deadzone(device, dead_zone);

event_user(CONTROLLER.EVENT_RESET_ALL);

// Rumble
rumble_handler = instance_create_layer(0, 0, "Instances", obj_rumble_handler); rumble_handler.parent = self;