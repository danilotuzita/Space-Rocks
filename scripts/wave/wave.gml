/// @param from
/// @param to
/// @param duration
/// @param offset
/// @param tick
var from = argument0, to = argument1, duration = argument2, offset = argument3, tick = argument4;

var wave_tick = 
(
    (tick - offset)  // "time" in cos curve
    / room_speed // converting to seconds
) / duration; // normalizing to the duration

var _cos = (
    -cos((wave_tick * 2 * pi)) // converting to radian (negative cos: so that the curve starts at -1)
    + 1 // offsets the cos curve to be above 0
) / 2; // normalize between [0,1]

// delta * ratio on cos curve + offsets back the origin
return (to - from) * _cos + from;
