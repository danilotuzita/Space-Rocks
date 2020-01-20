/// @param vec
/// @param vec_size
/// @param value
/// @param add
var vec = argument0, vec_size = argument1, value = argument2, add = argument3;

if (add > 0) add =  1;
if (add < 0) add = -1;

for (var i = 0; i < vec_size; i++)
{
    if (value == vec[i]) // if found index
        return vec[wrap(i, add, 0, vec_size - 1)]; // wrap the index
}

return vec[wrap(-1, add, 0, vec_size - 1)]; // wrap on the unknown (down = first index; up = last index)
