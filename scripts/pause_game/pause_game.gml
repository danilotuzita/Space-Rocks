if (!global.paused)
{
    var pause_sc_filename = "game_files/pause.png";
    var pause_sc_fullpath = working_directory + pause_sc_filename;
    surface_save(application_surface, pause_sc_fullpath); // printing the screen
    instance_deactivate_all(true); // disabling everything but the obj_controller
    instance_activate_object(hud); // and the hud
    instance_activate_object(global.drawer); // and the drawer
    create_hud_pause_menu(self, pause_sc_fullpath); // creating the main obj_hud_menu
    
    global.paused = true; // updating state
    return true;
}

return false;
