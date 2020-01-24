/// @description update weight
weight = 0;

for(var i = 0; i < ORES.COUNT; i++)
{
    var amnt = items[# i, INVENTORY.GRID_AMOUNT];
    weight += amnt * get_item_weight(i);
}