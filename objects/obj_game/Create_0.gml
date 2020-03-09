/// @description Game Create
global.game = self;
global.paused = false;
score = 0;
lives = 3;

init_ores();
global.drawer = instance_create_layer(0, 0, layer, obj_drawer);

starting_asteroids = 3; // how many asteroids the game starts
asteroid_spawn_rate = 3; // seconds between asteroid spawning
// asteroid_spawn_rate = 3; // god mode difficulty
power_up_spawn_rate = 30; // seconds between power up spawning
difficulty = 15; // number of asteroid I want to the game to tend to have on the sceen
// difficulty = 15; // god mode difficulty

next_room = room_start_menu;

if (DEBUG) window_set_position(window_get_x() * 3.5, window_get_y() - 100); // move game to 2nd monitor