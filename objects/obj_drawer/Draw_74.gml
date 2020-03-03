if(!shader_enabled) return; // if shader is disable skip draw and let GM handle the drawing

event_user(DRAWER.EVENT_SET_HUD_SURFACE); // sets up the surface
surface_copy(hud_surface, 0, 0, application_surface); // copy the application surface to the hud_surface (so it doesn't break alpha multplication)
gpu_set_colorwriteenable(1, 1, 1, 0); // locking alpha

// for all objects:
//    object.event.draw_gui()