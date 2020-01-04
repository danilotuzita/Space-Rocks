/// @param index
/// @param lintensity
/// @param rintensity
var index = argument0, lintensity = argument1, rintensity = argument2;

with(self.controller.rumble_handler)
{
    if (not between(index, 0, queue_size - 1, true)) // if out of bounds
        return -1; // do nothing

    if(ind_rumble_queue[# 2, index]) // checking if indefinte queue is reserved on index
    {
        ind_rumble_queue[# 0, index] = lintensity; // update left intensity
        ind_rumble_queue[# 1, index] = rintensity; // update right intensity
        return index;
    }

    if(rumble_queue[# 2, index] > 0 || rumble_queue[# 3, index] > 0)  // checking if timed queue is reserved on index
    {
        rumble_queue[# 0, index] = lintensity; // update left intensity
        rumble_queue[# 1, index] = rintensity; // update right intensity
        return index;
    }

    return index; // could not find a queue to disable
}