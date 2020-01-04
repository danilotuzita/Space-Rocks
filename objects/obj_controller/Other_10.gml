/// @description Reset all controller variables
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