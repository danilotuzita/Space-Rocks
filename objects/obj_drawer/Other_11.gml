/// @description Set HUD Surface
if(!surface_exists(hud_surface)) // checking if surface exists
    hud_surface = surface_create(window_get_width(), window_get_height()); // creating surface
surface_set_target(hud_surface); // setting up surface