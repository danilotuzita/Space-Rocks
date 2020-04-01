shader_enabled = false;
if(SHADER_ACTIVE) event_user(DRAWER.EVENT_TOGGLE); // Toggling shader
game_surface = -999;
hud_surface = -999;

tick = 0;
last_tick = 0;

mp = 1;
dir = 4;
progress = 0;
max_progress = 1;

toggle_time = 1;
alarm[0] = 2; // setting alarm to activate shader