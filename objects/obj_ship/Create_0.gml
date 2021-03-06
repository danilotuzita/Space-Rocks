global.player = self;
max_lives = 5;

// init
starting_x = room_width / 2;
starting_y = room_height / 2;
image_angle = 90;
x = starting_x;
y = starting_y;
can_move = true;
wrap_around = true;
base_move_speed = 5;
move_speed = base_move_speed;
controller = create_controller(self);
hud = create_hud(self);
inv = create_inventory(self, 250);
searching_ore = irandom_range(0, ORES.COUNT - 1);

// variables set up
tick = 0; // tick counter

is_dead = 0;
invincible = false;
is_dead_delay = 2; // invincible after death time

quitting = false; // is quitting mission
quit_timeout = 3 * room_speed; // time it takes to quit
quitting_timer = 0; // quitting timer

// fire1
fire1_dmg = 1;             // fire1 damage
fire1_cooldown = 0;        // fire1 cooldown timer
fire1_cooldown_rate = .20; // fire1 cooldown timer rate
if GOD_MODE fire1_cooldown_rate = .01; // GOD MODE

// fire2
fire2_charge = 0;                    // fire2 charge power
fire2_charge_rate = 4 / room_speed;  // fire2 charge rate
fire2_max_charge = 5;                // fire2 max charge

fire2_cooldown = 0;        // fire2 cooldown timer
fire2_cooldown_rate = 1.5; // fire2 cooldown timer rate

// fire3
fire3_dmg = .5             // fire3 damage
fire3_cooldown = 0;        // fire3 cooldown timer
fire3_cooldown_rate = .50; // fire3 cooldown timer rate
if GOD_MODE fire3_cooldown_rate = .20; // GOD MODE
fire3_bullet_count = 3;    // fire3 bullet amount
if GOD_MODE fire3_bullet_count = 7;    // GOD MODE
fire3_spread = 7;          // fire3 bullet spread

// dash
dashing = false;             // stores if the player is dashing state
dash_speed_multiplier = 1.5; // speed multiplier while dashing

dash_fuel = 1; // amont of dash fuel
dash_consumption_rate = .5 / room_speed; // fuel consumption rate while dashing
dash_recharge_rate = .1 / room_speed; // fuel recharge rate
dash_after_consumption = .1; // percentage of the fuel that will be "deduced" after stop dashing

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

// rumble
fire2_rumble_qindex = -1;
dashing_rumble_qindex = -1;
low_life_alert_rumble1 = -1;
low_life_alert_rumble2 = -1;