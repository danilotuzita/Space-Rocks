//#region Player Input Handling
	if (controller.select) game_end();
	//#region movement and rotation
	_x = controller.right - controller.left + controller.leftX; // dpad left/right + horizontal axis
	_y =  controller.down - controller.up   + controller.leftY; // dpad   up/down  + vertical axis
	if(can_move)
	{
		move_towards_point(x + _x, y + _y, move_speed * (_x * _x || _y * _y)); // move towards the new position with move_speed
		// (_x * _x || _y * _y): checks if _x^2 or _y^2 is true
		// further note: for some reason in GM negative values are false, therefore the power
	
		if (not controller.controller_active)
			image_angle = controller.cursor_relative_angle; //point_direction(x, y, mouse_x, mouse_y);
		else if(controller.rightIntensity > controller.rightDeadZone)
			image_angle = controller.rightAngle; // if right axis is out of the dead zone, sets the new angle
	}
	//#endregion

	if (keyboard_check_pressed(ord("1"))) give_to_inv(inv, 0, -1);
	if (keyboard_check_pressed(ord("2"))) give_to_inv(inv, 1, -1);
	
	if (keyboard_check_pressed(ord("J"))) event_user(SHIP.EVENT_DECREASE_LIVES); // set_rumble(.2, 0, 3, 0, 0);
	if (keyboard_check_pressed(ord("K"))) event_user(SHIP.EVENT_INCREASE_LIVES);// set_rumble(0, .2, 3, 0, 0);
	
	if (keyboard_check_pressed(ord("L"))) set_rumble_ext(1, .1, .8, 5, 1, 0, 5); // giant steps
	if (keyboard_check_pressed(ord("I"))) // heart beat
	{
		set_rumble_ext(1, 0, .2, 105, .5, 0, 1);
		set_rumble_ext(1, 0, .2, 105, .5, .3, 1);
	}

	#region dash
	if ((controller.dash && dashing) || (dash_fuel > 0 && controller.dash_pressed))
	{
		dashing = true;
		dash_fuel -= dash_consumption_rate;
		move_speed = base_move_speed * dash_speed_multiplier;

		if (dashing_rumble_qindex < 0)
			dashing_rumble_qindex = set_ind_rumble(.05, .2); // dashing rumble
	} 
	if (controller.dash_released || dash_fuel <= 0)
	{
		if (dashing_rumble_qindex >= 0)
			dashing_rumble_qindex = disable_rumble(dashing_rumble_qindex); // disabling rumble
		dash_fuel -= dash_afterconsumption * dashing;
		dashing = false;
		move_speed = base_move_speed;
	}
	
	if(dashing && tick % dash_trail_interval == 0) // if is dashing save trail position
	{
		dash_trail_grid[# 0, dash_trail_index] = x;
		dash_trail_grid[# 1, dash_trail_index] = y;
		dash_trail_grid[# 2, dash_trail_index] = image_angle;
		dash_trail_grid[# 3, dash_trail_index] = 1; // setting opacity 1, as time passes this will decrease effectively becoming a vacant index on the grid

		dash_trail_index++; // increase trail index
		dash_trail_index %= dash_trail_amount; // assert the dash_trail_index is between 0 and dash_trail_amount
	}
	#endregion

	//#region fire3
	// if pressed fire3, can fire and is not charging fire2
	if(controller.fire3 && fire3_cooldown <= 0 && !fire2_charge)
	{
		fire3_cooldown = fire3_cooldown_rate * room_speed; // sets fire2 cooldown
		var half = fire3_bullet_count / 2;
		for(var i = -half; i < half; i++)
			with(fire_bullet(x, y, image_angle + (i * fire3_spread), .5, self)) // creates the bullet
				image_alpha = .75;

		var lrumble = 0.05;
		var rrumble = 0.05;
		set_rumble    (lrumble, rrumble, .033, 2, .033); // fire3 rumble
		set_rumble_ext(rrumble, lrumble, .033, 1,    0, .033, 1); // fire3 rumble with delay
	}
	//#endregion

	//#region fire1
	// if pressed fire1, can fire and is not charging fire2
	if(controller.fire1 && fire1_cooldown <= 0 && !fire2_charge && fire3_cooldown <= 0)
	{
		fire1_cooldown = fire1_cooldown_rate * room_speed; // sets fire1 cooldown
		with(fire_bullet(x, y, image_angle, 1, self)) // creates the bullet
			image_xscale = 2;

		set_rumble(0, .15, .1, 0, 0); // fire1 rumble
	}
	//#endregion

	//#region fire2
	// if is pressing fire2 and can fire
	if(controller.fire2 && fire2_cooldown <= 0)
		fire2_charge += fire2_charge_rate; // charges fire2

	if(fire2_charge > 0) // if is charging
	{
		// if the fire2 charge is greater than it can
		var fire2_ratio = ratio(
			fire2_charge, 0, fire2_max_charge,
			0, 1
		);
		
		if (fire2_rumble_qindex < 0)
			fire2_rumble_qindex = set_ind_rumble(0, 0); // fire2 charged rumble
		var rumble = power(fire2_ratio, 3) + .1;
		update_rumble(fire2_rumble_qindex, 0,  rumble * .3);
		
		if(fire2_ratio == 1)
		{
			fire2_charge = fire2_max_charge; // limit it
			update_rumble(fire2_rumble_qindex, .1, .2);
		}
		
		if(controller.fire2_released) // if fire2 is released
		{
			fire2_cooldown = fire2_cooldown_rate * room_speed; // sets fire2 cooldown
			with(fire_bullet(x, y, image_angle, 1, self)) // creates the bullet
			{
				var charge = other.fire2_charge;

				image_xscale = ratio(charge, 0, 5, 2, 4);
				speed = ratio(charge, 0, 5, 7, 10);
				damage = max(1, charge);

				life_time = .75 * room_speed;
				bounce = 5;      // sets the bounce
				can_wrap = true; // sets room wraping
				debris = 3;      // sets debris amount
			}

			fire2_charge = 0; // zero the charge

			if (fire2_rumble_qindex >= 0)
				fire2_rumble_qindex = disable_rumble(fire2_rumble_qindex); // disabling charge rumble
			set_rumble_ext(1, 0, .083, 2, .2, 0, 1); // fire2 bullet rumble
		}
	}
	else
		fire2_cooldown--; // decrease cooldown
	//#endregion

//#endregion
//#region Effects
	// if mod(tick, move_trail_rate) and is not dead
	if(!(tick % move_trail_rate) && is_dead <= 0)
		repeat(move_trail_amount) // spawn trails
			with(spawn_debris(x, y))
			{
				speed = .1;
				image_xscale = 2;
				image_yscale = 2;
				fade_rate = .05;
				image_blend = other.image_blend;
			}

	if(is_dead > 0) // if it's dead
	{
		if(!(tick % dead_blink_rate)) // if mod(tick, dead_blink_rate)
			image_alpha = not image_alpha; // flash sprite
		is_dead--; // decreases dead timer
		
		if(lives == 1 && is_dead == 0)
		{
			low_life_alert_rumble1 = set_rumble_ext(0.05, 0, .2, 999, .5,  0, 1);
			low_life_alert_rumble2 = set_rumble_ext(0.05, 0, .2, 999, .5, .3, 1);
		}
	}
//#endregion