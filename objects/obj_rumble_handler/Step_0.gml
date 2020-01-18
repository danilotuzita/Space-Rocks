if(!rumble) return event_user(RUMBLE_HANDLER.EVENT_INIT_QUEUE);
var li = 0, ri = 0;

for(var i = 0; i < queue_size; i++) // looping indefinite rumble queue
{
    if(ind_rumble_queue[# 2, i] == false) continue; // skip disabled queues

    li += ind_rumble_queue[# 0, i];
    ri += ind_rumble_queue[# 1, i];
}

for(var i = 0; i < queue_size; i++) // looping timed rumble queue
{
    if(--rumble_queue[# 2, i] < 0) // decrease timer and check if its below zero
        if(rumble_queue[# 3, i] > 0) // check if timer repeats
        {
            if(--rumble_queue[# 4, i] < 0) // decrease interval time and check if ended
            {
                rumble_queue[# 2, i] = rumble_queue[# 5, i]; // reseting rumble timer
                rumble_queue[# 4, i] = rumble_queue[# 6, i]; // reseting interval timer
                rumble_queue[# 3, i]--; // decrease repeating count
            } else continue; // repeat interval
        } else continue; // does not repeat

	var decay_ratio = 1;
	if (rumble_queue[# 7, i] != 1) // TODO: this is kinda broken, is not decreasing linearly
	    decay_ratio = ratio(rumble_queue[# 2, i],
			0, rumble_queue[# 5, i],
			rumble_queue[# 7, i], 1
	    );
    li += rumble_queue[# 0, i] / decay_ratio; // my guess the problem is here (division)
    ri += rumble_queue[# 1, i] / decay_ratio;
}

// parent.parent.hud.d = "li: " + string(li) + " | ri: " + string(ri);

gamepad_set_vibration(parent.device, li, ri);
