/// @param i
// Destroy this menu and go back to the previous menu
var i = argument0;
instance_activate_object(parent);
event_user(HUD_MENU.EVENT_DESTROY);
return true;
