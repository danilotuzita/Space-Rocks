/// @param lintensity
/// @param rintensity
/// @param time
/// @param repeat_count
/// @param repeat_interval
/// @param delay
/// @param decay
var lintensity = argument0, rintensity = argument1, time = argument2, repeat_count = argument3, repeat_interval = argument4, delay = argument5, decay = argument6;

// if intensity is 0 or less diasbles the vibration
// if the time is 0 or less sets the vibration indefinitely

with(self.controller.rumble_handler)
{
    if(time <= 0) // indefinite rumble
    {
        for(var i = 0; i < queue_size; i++) // looping indefinite rumble queue
            if(ind_rumble_queue[# 2, i] == false) // if this queue is avaiable
            {
                ind_rumble_queue[# 0, i] = lintensity; // set left intensity
                ind_rumble_queue[# 1, i] = rintensity; // set right intensity
                ind_rumble_queue[# 2, i] = true; // reserving queue
                return i;
            }
        return -1; // could not reserve
    }

    for(var i = 0; i < queue_size; i++) // looping timed rumble queue
    {
        // check if timer expired and does not repeat (ie. is avaiable)
        if(rumble_queue[# 2, i] <= 0 && rumble_queue[# 3, i] <= 0)
        { 
            rumble_queue[# 0, i] = lintensity; // set left intensity
            rumble_queue[# 1, i] = rintensity; // set right intensity
            rumble_queue[# 2, i] = time * room_speed; // set timer
            rumble_queue[# 7, i] = decay; // setting intensity decay

            rumble_queue[# 3, i] = repeat_count; // set repeat counter
            rumble_queue[# 4, i] = repeat_interval * room_speed; // set interval between repeats

            rumble_queue[# 5, i] = rumble_queue[# 2, i]; // save original time
            rumble_queue[# 6, i] = rumble_queue[# 4, i]; // save original interval between repeats

            if(delay > 0) // if has delay
            {
                rumble_queue[# 2, i] = 0; // disable vibration (ie. activate delay timer)
                rumble_queue[# 3, i]++; // add a repeat
                rumble_queue[# 4, i] = delay * room_speed; // adding delay
            }
            return i; // return queue pos
        }
    }
    return -1; // could not reserve queue
}

