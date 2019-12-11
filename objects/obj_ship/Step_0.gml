//#region Player Input Handling
	if (controller.pause || keyboard_check(vk_escape)) game_end();
	//#region movement
	_x = controller.right - controller.left + controller.leftX; // dpad left/right + horizontal axis
	_y =  controller.down - controller.up   + controller.leftY; // dpad   up/down  + vertical axis
	move_towards_point(x + _x, y + _y, move_speed * (_x * _x || _y * _y)); // move towards the new position with move_speed
	// (_x * _x || _y * _y): checks if _x^2 or _y^2 is true
	// further note: for some reason in GM negative values are false, therefore the power
	//#endregion
	
	//#region rotation
	if (controller.rightIntensity > controller.rightDeadZone) image_angle = controller.rightAngle; // if right axis is out of the dead zone, sets the new angle
	//#endregion
	
	if (keyboard_check_pressed(ord("A"))) lives++;
	if (keyboard_check_pressed(ord("S"))) lives--;
	
	#region dash
	if (controller.dash && dash_fuel > 0)
	{
		dashing = true;
		dash_fuel -= dash_consumption_rate;
		move_speed = base_move_speed * dash_speed_multiplier;
		
		if(tick % dash_trail_interval == 0) // save trail position
		{
			dash_trail_grid[# 0, dash_trail_index] = x;
			dash_trail_grid[# 1, dash_trail_index] = y;
			dash_trail_grid[# 2, dash_trail_index] = image_angle;
			dash_trail_grid[# 3, dash_trail_index] = 1; // setting opacity 1, as time passes this will decrease effectively becoming a vacant index on the grid
			
			dash_trail_index++; // increase trail index
			dash_trail_index %= dash_trail_amount; // assert the dash_trail_index is between 0 and dash_trail_amount
		}
	} 
	if (controller.dash_released || dash_fuel <= 0)
	{
		dash_fuel -= .2 * dashing;
		dashing = false;
		move_speed = base_move_speed;
	}
	#endregion
	
	//#region fire3
	// if pressed fire3, can fire and is not charging fire2
	if(controller.fire3 && fire3_cooldown <= 0 && !fire2_charge)
	{
		fire3_cooldown = fire3_cooldown_rate * room_speed; // sets fire2 cooldown
		var half = fire3_bullet_count / 2;
		for(var i = -half; i < half; i++)
			with(fire_bullet(x, y, image_angle + (i * fire3_spread), .5)) // creates the bullet
				image_alpha = .75;
	}
	//#endregion
	
	//#region fire1
	// if pressed fire1, can fire and is not charging fire2
	if(controller.fire1 && fire1_cooldown <= 0 && !fire2_charge && fire3_cooldown <= 0)
	{
		fire1_cooldown = fire1_cooldown_rate * room_speed; // sets fire1 cooldown
		with(fire_bullet(x, y, image_angle, 1)) // creates the bullet
			image_xscale = 2;
	}
	//#endregion
	
	//#region fire2
	// if is pressing fire2 and can fire
	if(controller.fire2 && fire2_cooldown <= 0)
		fire2_charge += fire2_charge_rate; // charges fire2
	
	// if the fire2 charge is greater than it can
	if(fire2_charge > fire2_max_charge)
		fire2_charge = fire2_max_charge; // limit it
	
	if(fire2_charge > 0) // if is charging
	{
		if(controller.fire2_released) // if fire2 is released
		{
			fire2_cooldown = fire2_cooldown_rate * room_speed; // sets fire2 cooldown
			with(fire_bullet(x, y, image_angle, 1)) // creates the bullet
			{
				var charge = other.fire2_charge;
				
				image_xscale = ratio(charge, 0, 5, 2, 4);
				speed = ratio(charge, 0, 5, 7, 10);
				damage = charge;
				
				life_time = .75 * room_speed;
				bounce = 5;      // sets the bounce
				can_wrap = true; // sets room wraping
				debris = 3;      // sets debris amount
			}
			
			fire2_charge = 0; // zero the charge
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
				image_xscale = 2.5;
				image_yscale = 2.5;
				fade_rate = .05;
				image_blend = other.image_blend;
			}
	
	if(is_dead > 0) // if it's dead
	{
		if(!(tick % dead_blink_rate)) // if mod(tick, dead_blink_rate)
			image_alpha = not image_alpha; // flash sprite
		is_dead--; // decreases dead timer
	}
//#endregion
	