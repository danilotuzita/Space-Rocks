/// @param vec
/// @param value
/// @param add
var vec = argument0, value = argument1, add = argument2;

if (add > 0) add =  1;
if (add < 0) add = -1;

var vec_size = array_length_1d(vec);
for (var i = 0; i < vec_size; i++)
{
    if (value == vec[i]) // if found index
        return vec[wrap(i, add, 0, vec_size - 1)]; // wrap the index
}

return vec[wrap(-1, add, 0, vec_size - 1)]; // wrap on the unknown (down = first index; up = last index)
