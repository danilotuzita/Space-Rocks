/// @description Set HUD Surface
if(!surface_exists(hud_surface)) // checking if surface exists
    hud_surface = surface_create(window_get_width(), window_get_height()); // creating surface
surface_set_target(hud_surface); // setting up surface

////// OLD GAME SURFACE
/*
//#event other_user2 Set Game Surface
if(!surface_exists(game_surface))
{
    game_surface = surface_create(window_get_width(), window_get_height());
    debug("creating game_surface:", game_surface);
}
surface_set_target(game_surface);


//#event draw_begin
if(!shader_enabled) return;
// event_user(DRAWER.EVENT_SET_GAME_SURFACE);
draw_clear_alpha(c_black, 0.0);

//#event draw_end
if(!shader_enabled) return;
// surface_reset_target();
*/