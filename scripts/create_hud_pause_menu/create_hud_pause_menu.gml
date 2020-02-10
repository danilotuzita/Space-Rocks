/// @param _controller
/// @param spr_path
var _controller = argument0, spr_path = argument1;

var hud = instance_create_layer(0, 0, "Instances", obj_hud_menu);
with(hud)
{
    controller = _controller;
    setup_script = pause_menu_setup;
    cancel_script = pause_menu_cancel;
    sprite_index = sprite_add(spr_path, 1, false, false, 0, 0); // background
    cursor_pos = _controller.controller_active ? 0 : -1; // if the controller is active sets the selected cursor as 0 (top option) else as -1 (unset)
}

return hud;
