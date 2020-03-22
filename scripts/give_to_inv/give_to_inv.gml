/// @param inv
/// @param ore_id
/// @param amount
var inv = argument0, ore_id = argument1, amount = argument2;

with (inv)
{
    if (ore_id < 0)
        return false;
        
    amount = floor(amount);
    
    if (amount == 0) return false;
    if (amount > 0)
    {
        var new_weight = weight + (get_item_weight(ore_id) * amount);
        if (new_weight > max_weight)
            return false;
    }
    if (amount < 0)
    {
        if(items[# ore_id, INVENTORY.GRID_AMOUNT] < -amount)
            return false;
    }
    
    items[# ore_id, INVENTORY.GRID_AMOUNT] += amount;
    event_user(INVENTORY.EVENT_UPDATE_WEIGHT);
    return true;
}