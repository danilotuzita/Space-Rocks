if (!shader_enabled) return; // if shader is disable skip draw and let GM handle the drawing

gpu_set_colorwriteenable(1, 1, 1, 1); // unlocking alpha
surface_reset_target(); // reseting surface

if (progress < 1) // if the hud is not up (the hud_surface already has the application_surface is built in (see draw_gui_begin))
    draw_surface(application_surface, 0, 0); // drawing application_surface (every obj.event.draw())
scr_CRT_apply_to_surface(hud_surface, view_camera[0]); // drawing hud_surface

var curr_tick = tick - last_tick;
var a = ratio(curr_tick / room_speed, 0, max_progress, -5, 5) * mp;
if (between(a, -5, 5, false))
    progress = sigma(a);
else
    progress = (curr_tick >= room_speed) * mp;

if (DEBUG)
    debug(progress);
