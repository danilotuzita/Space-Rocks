/// @param controller
/// @param ini_filename
var controller = argument0, ini_filename = argument1;

if(file_exists(ini_filename))
    file_delete(ini_filename);
ini_open(ini_filename);

with(controller)
{
    // KEYBOARD
    ini_write_real("Keyboard", "accept", inp_kbd_accept);
    ini_write_real("Keyboard", "cancel", inp_kbd_cancel);
    ini_write_real("Keyboard", "pause", inp_kbd_pause);
    ini_write_real("Keyboard", "select", inp_kbd_select);
    
    ini_write_real("Keyboard", "up", inp_kbd_up);
    ini_write_real("Keyboard", "down", inp_kbd_down);
    ini_write_real("Keyboard", "left", inp_kbd_left);
    ini_write_real("Keyboard", "right", inp_kbd_right);
    
    ini_write_real("Keyboard", "fire1", inp_kbd_fire1);
    ini_write_real("Keyboard", "fire2", inp_kbd_fire2);
    ini_write_real("Keyboard", "fire3", inp_kbd_fire3);
    
    ini_write_real("Keyboard", "dash", inp_kbd_dash);
    
    // CONTROLLER
    ini_write_real("Controller", "accept", inp_accept);
    ini_write_real("Controller", "cancel", inp_cancel);
    ini_write_real("Controller", "pause", inp_pause);
    ini_write_real("Controller", "select", inp_select);
    
    ini_write_real("Controller", "up", inp_up);
    ini_write_real("Controller", "down", inp_down);
    ini_write_real("Controller", "left", inp_left);
    ini_write_real("Controller", "right", inp_right);
    
    ini_write_real("Controller", "fire1", inp_fire1);
    ini_write_real("Controller", "fire2", inp_fire2);
    ini_write_real("Controller", "fire3", inp_fire3);
    
    ini_write_real("Controller", "dash", inp_dash);
    
    ini_write_real("Controller", "axisLh", inp_axisLh);
    ini_write_real("Controller", "axisLv", inp_axisLv);
    ini_write_real("Controller", "axisRh", inp_axisRh);
    ini_write_real("Controller", "axisRv", inp_axisRv);
}

ini_close();
