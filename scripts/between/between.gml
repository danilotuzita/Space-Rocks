/// @param value
/// @param lower
/// @param upper
/// @param included
var value = argument0, lower = argument1, upper = argument2, included = argument3;

if (included)
    return (value >= lower && value <= upper);
return (value > lower && value < upper);
