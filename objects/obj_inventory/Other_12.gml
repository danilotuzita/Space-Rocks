/// @description remove ores
interaction_failed = true;
if (interaction_item == -1 || interaction_count == -1)
{
    interaction_item = -1;
    interaction_count = -1;
    return;
}

if (items[# interaction_item, INVENTORY.GRID_AMOUNT] < interaction_count)
{
    interaction_item = -1;
    interaction_count = -1;
    return;
}

items[# interaction_item, INVENTORY.GRID_AMOUNT] -= interaction_count;

interaction_item = -1;
interaction_count = -1;
interaction_failed = false;