/// @param parent
/// @param spr
var parent = argument0, spr = argument1;

var hud = instance_create_layer(0, 0, "Instances", obj_hud_pause_menu);
hud.parent = parent;
hud.sprite_index = sprite_add(spr, 1, false, false, 0, 0);
// debug(spr + ": " + string(hud.image_index));

return hud;
