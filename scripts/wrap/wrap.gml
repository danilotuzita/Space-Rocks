/// @param value
/// @param add
/// @param _min
/// @param _max
var value = argument0, add = argument1, _min = argument2, _max = argument3;

value += add;

if (value > _max)
    return _min;
if (value < _min)
    return _max;

return value;
