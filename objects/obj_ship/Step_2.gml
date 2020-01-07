if(quitting)
{
	if(quitting_timer++ > quit_timeout)
		event_user(SHIP.EVENT_QUIT_MISSION);
} else
	quitting_timer = 0;


// wrap movement
if(wrap_around) move_wrap(true, true, sprite_width / 2);

// dashing cooldown
if(not dashing) dash_fuel += dash_recharge_rate;
if(dash_fuel > 1) dash_fuel = 1;

// independent cooldown decrease
fire1_cooldown--;
fire3_cooldown--;

// increases the tick count
tick++;