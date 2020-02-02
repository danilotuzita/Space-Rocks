/// @param _x
/// @param _y
/// @param size
var _x = argument0, _y = argument1, size = argument2;

with(instance_create_layer(_x, _y, "Instances", obj_debris))
{
    if (size > 0)
    {
        image_xscale = size;
        image_yscale = size;
    }
}
