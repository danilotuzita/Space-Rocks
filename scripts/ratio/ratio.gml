/// @param input
/// @param in_min
/// @param in_max
/// @param out_min
/// @param out_max
var input = argument0, in_min = argument1, in_max = argument2, out_min = argument3, out_max = argument4;

if (input > in_max) return out_max;
if (input < in_min) return out_min;

return 
(
    (
        (input - in_min) / (in_max - in_min) // normalizing and getting ratio of the input value
    ) * (out_max - out_min) // output ratio
) + out_min; // adding output offset

