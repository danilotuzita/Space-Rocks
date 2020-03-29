/// @description Toggle shader
shader_enabled = !shader_enabled; // toggle shader state
application_surface_draw_enable(!shader_enabled); // toggling aplication surface auto draw