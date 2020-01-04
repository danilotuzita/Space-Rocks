var pause_sc_filename = "game_files/pause.png";
var pause_sc_fullpath = working_directory + pause_sc_filename;

if (global.paused)
{

    /*if file_exists(pause_sc_filename)
        file_delete(pause_sc_filename);*/
    
    instance_activate_all();
    global.paused = false;

} else {

    screen_save(pause_sc_fullpath);
    instance_deactivate_all(true);
    create_hud_pause_menu(self, pause_sc_fullpath);

    global.paused = true;
    
}
