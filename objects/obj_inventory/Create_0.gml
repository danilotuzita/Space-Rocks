weight = 0;
max_weight = 1;
items = ds_grid_create(ORES.COUNT, 1);
event_user(INVENTORY.EVENT_CLEAR_INV);
interaction_item = -1;
interaction_count = -1;
interaction_failed = false;