parent = -1;
gamepad_set_axis_deadzone(device, .05);

up = false;
down = false;
left = false;
right = false;

accept = false;
cancel = false;
pause = false;

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

// Rumble
rumble_handler = instance_create_layer(0, 0, "Instances", obj_rumble_handler); rumble_handler.parent = self;