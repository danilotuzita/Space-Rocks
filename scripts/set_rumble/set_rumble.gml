/// @param lintensity
/// @param rintensity
/// @param time
/// @param repeat_count
/// @param repeat_interval
var lintensity = argument0, rintensity = argument1, time = argument2, repeat_count = argument3, repeat_interval = argument4;
// if the time is 0 or less sets the vibration indefinitely
return set_rumble_ext(lintensity, rintensity, time, repeat_count, repeat_interval, 0, 1);
