/// @param parent
/// @param spr
var parent = argument0, spr = argument1;

var hud = instance_create_layer(0, 0, "Instances", obj_hud_pause_menu);
hud.parent = parent;
hud.sprite_index = sprite_add(spr, 1, false, false, 0, 0);
hud.aim_cursor_sprite = parent.hud.aim_cursor_sprite;
hud.hud_color = parent.hud.hud_color;
hud.hud_acc_color = parent.hud.hud_acc_color;
hud.hud_alpha = parent.hud.hud_alpha;
hud.cursor_pos = parent.controller_active ? 0 : -1; // if the controller is active sets the selected cursor as 0 (top option) else as -1 (unset)

return hud;
