// init
starting_x = room_width / 2;
starting_y = room_height / 2;
image_angle = 90;
x = starting_x;
y = starting_y;
base_move_speed = 5;
move_speed = base_move_speed;
controller = instance_create_layer(0, 0, "Instances", obj_controller);

// variables set up
tick = 0; // tick counter

is_dead = 0;
invincible = false;
is_dead_delay = 2; // invincible after death time

// fire1
fire1_cooldown = 0;        // fire1 cooldown timer
fire1_cooldown_rate = .15; // fire1 cooldown timer rate

// fire2
fire2_charge = 0;                    // fire2 charge power
fire2_charge_rate = 4 / room_speed;  // fire2 charge rate
fire2_max_charge = 5;                // fire2 max charge

fire2_cooldown = 0;        // fire2 cooldown timer
fire2_cooldown_rate = 1.0; // fire2 cooldown timer rate

// dash
dashing = false;             // stores if the player is dashing state
dash_speed_multiplier = 1.5; // speed multiplier while dashing

dash_cooldown = 0;       // dash cooldown timer
dash_cooldown_rate = .2; // dash cooldown timer rate

dash_time = 0;     // is dashing timer
dash_max_time = 1; // dashing timer max (how many seconds the player can dash)

dash_trail_amount = 6;   // amount of saved trails
dash_trail_interval = 2; // interval of ticks between trail sprite saves
dash_trail_fade = 1 / (dash_trail_interval * dash_trail_amount); // trail fade ratio

dash_trail_index = 0; // trail matrix index to save next trail position
dash_trail_grid = ds_grid_create(4, dash_trail_amount); // matrix to store the trails
for(var i = 0; i < dash_trail_amount; i++) // init trail matrix
{
	dash_trail_grid[# 0, i] = x; // x pos
	dash_trail_grid[# 1, i] = y; // y pos
	dash_trail_grid[# 2, i] = image_angle; // angle
	dash_trail_grid[# 3, i] = 0; // opacity
}

// effects
move_trail_rate = 2;   // spawn a trail tick interval
move_trail_amount = 2; // amount of trails to spawn

dead_blink_rate = 5; // blinking tick interval