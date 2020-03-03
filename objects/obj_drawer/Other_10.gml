/// @description Toggle shader
shader_enabled = !shader_enabled; // toggle shader state
application_surface_draw_enable(!shader_enabled); // toggling aplication surface auto draw
scr_CRT_init_shader(view_camera[0], false, 0.0, true, false, true, 0.03, 80.0, 1.0, true, 0.175); // init shader