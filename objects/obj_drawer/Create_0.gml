shader_enabled = !SHADER_ACTIVE; // Maintain the !
event_user(DRAWER.EVENT_TOGGLE); // Toggling shader
game_surface = -999;
hud_surface = -999;

mp = 1;
progress = 0;
max_progress = 1;

tick = 0;
last_tick = 0;