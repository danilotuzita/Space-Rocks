/// @param parent
/// @param max_weight
var parent = argument0, max_weight = argument1;

var inv = instance_create_layer(0, 0, "Instances", obj_inventory);
inv.parent = parent;
inv.max_weight = max_weight;

return inv;
