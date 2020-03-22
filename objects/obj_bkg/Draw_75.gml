if (prints-- < 0) return;

var pause_sc_filename = "game_files/bkg"+string(prints)+".png";
var pause_sc_fullpath = working_directory + pause_sc_filename;
surface_save(application_surface, pause_sc_fullpath); // printing the screen
