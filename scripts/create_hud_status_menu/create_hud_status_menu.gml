/// @param _parent
/// @param _controller
/// @param spr
var _parent = argument0, _controller = argument1, spr = argument2;

var hud = instance_create_layer(0, 0, "Instances", obj_hud_menu);
with(hud)
{
    parent = _parent;
    controller = _controller;
    setup_script  = status_menu_setup;
    cancel_script = status_menu_cancel;
    sprite_index = spr;
    cursor_pos = _controller.controller_active ? 0 : -1; // if the controller is active sets the selected cursor as 0 (top option) else as -1 (unset)
}

return hud;
