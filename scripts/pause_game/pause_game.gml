if (!global.paused)
{
    var pause_sc_filename = "game_files/pause.png";
    var pause_sc_fullpath = working_directory + pause_sc_filename;
    screen_save(pause_sc_fullpath); // printing the screen
    instance_deactivate_all(true); // disabling everything but the obj_controller
    create_hud_pause_menu(self, pause_sc_fullpath); // creating the main obj_hud_menu

    global.paused = true; // updating state
    return true;
}

return false;
