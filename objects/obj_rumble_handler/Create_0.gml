parent = -1;
queue_size = 10;
rumble = true;

rumble_queue = ds_grid_create(8, queue_size);
ind_rumble_queue = ds_grid_create(3, queue_size);
event_user(RUMBLE_HANDLER.EVENT_INIT_QUEUE);