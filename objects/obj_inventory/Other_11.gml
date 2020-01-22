/// @description add ores
interaction_failed = true;
if (interaction_item == -1 || interaction_count == -1)
{
    interaction_item = -1;
    interaction_count = -1;
    return;
}

var new_weight = weight + (get_item_weight(interaction_item) * interaction_count);

if (new_weigh > max_weight) return;

items[# interaction_item, INVENTORY.GRID_AMOUNT] += interaction_count;

interaction_item = -1;
interaction_count = -1;
interaction_failed = false;