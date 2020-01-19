/// @param controller
/// @param ini_filename
var controller = argument0, ini_filename = argument1;

ini_open(ini_filename);

with(controller)
{
    // KEYBOARD
    inp_kbd_accept = ini_read_real("Keyboard", "accept", vk_enter);
    inp_kbd_cancel = ini_read_real("Keyboard", "cancel", vk_backspace);
    inp_kbd_pause  = ini_read_real("Keyboard", "pause", vk_escape);
    inp_kbd_select = ini_read_real("Keyboard", "select", vk_tab);
    
    inp_kbd_up =    ini_read_real("Keyboard", "up", ord("W"));
    inp_kbd_down =  ini_read_real("Keyboard", "down", ord("S"));
    inp_kbd_left =  ini_read_real("Keyboard", "left", ord("A"));
    inp_kbd_right = ini_read_real("Keyboard", "right", ord("D"));
    
    inp_kbd_fire1 = ini_read_real("Keyboard", "fire1", mb_left);
    inp_kbd_fire2 = ini_read_real("Keyboard", "fire2", mb_right);
    inp_kbd_fire3 = ini_read_real("Keyboard", "fire3", mb_middle);
    
    inp_kbd_dash = ini_read_real("Keyboard", "dash", vk_lshift);
    
    // CONTROLLER
    inp_accept = ini_read_real("Controller", "accept", gp_face1);
    inp_cancel = ini_read_real("Controller", "cancel", gp_face2);
    inp_pause  = ini_read_real("Controller", "pause", gp_start);
    inp_select = ini_read_real("Controller", "select", gp_select);
     
    inp_up    = ini_read_real("Controller", "up", gp_padu);
    inp_down  = ini_read_real("Controller", "down", gp_padd);
    inp_left  = ini_read_real("Controller", "left", gp_padl);
    inp_right = ini_read_real("Controller", "right", gp_padr);
    
    inp_fire1 = ini_read_real("Controller", "fire1", gp_shoulderr);
    inp_fire2 = ini_read_real("Controller", "fire2", gp_shoulderrb);
    inp_fire3 = ini_read_real("Controller", "fire3", gp_shoulderl);
    
    inp_dash = ini_read_real("Controller", "dash", gp_shoulderlb);
    
    inp_axisLh = ini_read_real("Controller", "axisLh", gp_axislh);
    inp_axisLv = ini_read_real("Controller", "axisLv", gp_axislv);
    inp_axisRh = ini_read_real("Controller", "axisRh", gp_axisrh);
    inp_axisRv = ini_read_real("Controller", "axisRv", gp_axisrv);
}

ini_close();
