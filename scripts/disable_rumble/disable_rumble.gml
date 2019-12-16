/// @param index
var index = argument0;

with(self.controller.rumble_handler)
{
    if (not between(index, 0, queue_size - 1, true)) // if out of bounds
        return index; // do nothing
    
    if(ind_rumble_queue[# 2, index]) // checking if indefinte queue is reserved on index
    {
        ind_rumble_queue[# 2, index] = false; // freeing queue pos
        return -1;
    }
    
    if(rumble_queue[# 2, index] > 0 || rumble_queue[# 3, index] > 0)  // checking if timed queue is reserved on index
    {
        rumble_queue[# 2, index] = 0; // zeroing timer
        rumble_queue[# 3, index] = 0; // zeroing repetitions
        return -1;
    }
    
    return index; // could not find a queue to disable
}