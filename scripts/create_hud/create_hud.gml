/// @param parent
var parent = argument0;

var hud = instance_create_layer(0, 0, "Instances", obj_hud);
hud.parent = parent;
parent.controller.hud = hud;

return hud;
