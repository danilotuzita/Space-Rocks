parent = -1;
is_paused = false;

gamepad_set_axis_deadzone(device, .05);

event_user(CONTROLLER.EVENT_RESET_ALL);

// Rumble
rumble_handler = instance_create_layer(0, 0, "Instances", obj_rumble_handler); rumble_handler.parent = self;

debug(self);