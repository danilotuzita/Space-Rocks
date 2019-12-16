parent = -1;
queue_size = 10;

rumble_queue = ds_grid_create(8, queue_size);
for(var i = 0; i < queue_size; i++) // init timed rumble queue
{
	rumble_queue[# 0, i] = 0; // left intensity
	rumble_queue[# 1, i] = 0; // right intensity
	rumble_queue[# 2, i] = 0; // time
	rumble_queue[# 3, i] = 0; // repeat count
	rumble_queue[# 4, i] = 0; // interval between repeats
	rumble_queue[# 5, i] = 0; // original time
	rumble_queue[# 6, i] = 0; // orignal interval between repeats
	rumble_queue[# 7, i] = 1; // intensity decay
}

ind_rumble_queue = ds_grid_create(3, queue_size);
for(var i = 0; i < queue_size; i++) // init indefinite rumble queue
{
	ind_rumble_queue[# 0, i] = 0; // left intensity
	ind_rumble_queue[# 1, i] = 0; // right intensity
	ind_rumble_queue[# 2, i] = false; // is active
}