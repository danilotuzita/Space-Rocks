//#region Player Input Handling
	//#region movement
	var _x = controller.right - controller.left + controller.leftX;
	var _y =  controller.down - controller.up   + controller.leftY;
	move_towards_point(x + _x, y + _y, move_speed * (_x * _x || _y * _y));
	//#endregion
	
	//#region rotation
	if (controller.rightIntensity > .5)	image_angle = controller.rightAngle;
	//#endregion
	
	//#region dash
	if(dashing)
	{
		if(dash_time <= 0 || controller.dash_released) // if can't continue dashing or dash button was released
		{
			dashing = false; // disable dashing state
			dash_cooldown = dash_cooldown_rate * room_speed; // start dash cooldown
			move_speed = base_move_speed; // return to base move_speed
			image_blend = c_yellow; // change color to yellow (charging dash)
		}
		
		if(dash_time % dash_trail_interval == 0) // save trail position
		{
			dash_trail_grid[# 0, dash_trail_index] = x;
			dash_trail_grid[# 1, dash_trail_index] = y;
			dash_trail_grid[# 2, dash_trail_index] = image_angle;
			dash_trail_grid[# 3, dash_trail_index] = 1; // setting opacity 1
			
			dash_trail_index++; // increase trail index
			dash_trail_index %= dash_trail_amount; // assert is between 0 and dash_trail_amount
		}
		
		dash_time--;
	}
	else
	{
		if(dash_cooldown <= 0) // if can dash
		{
			image_blend = c_white; // change color to white (can dash)
			if(controller.dash_pressed) // if dash button was pressed
			{
				dashing = true; // enable dashing state
				dash_time = dash_max_time * room_speed; // setting timer for dash state
				move_speed *= dash_speed_multiplier; // increase move_speed
				image_blend = c_red; // change color to red (is dashing)
			}
		}
		
		dash_cooldown--;
	}
	//#endregion
	
	//#region fire1
	if(controller.fire1 && fire1_cooldown <= 0 && !fire2_charge)
	{
		fire1_cooldown = fire1_cooldown_rate * room_speed;
		fire_bullet(x, y, image_angle, 1);
	}
	//#endregion
	
	//#region fire2
	if(controller.fire2 && fire2_cooldown <= 0)
		fire2_charge += fire2_charge_rate;
	
	if(fire2_charge > fire2_max_charge)
		fire2_charge = fire2_max_charge;
	
	if(fire2_charge > 0)
	{
		if(controller.fire2_released)
		{
			fire2_cooldown = fire2_cooldown_rate * room_speed;
			with(fire_bullet(x, y, image_angle, 5))
			{
				image_xscale = 2.5;
				image_yscale = 2.5;
				image_angle = 45;
				penetration = other.fire2_charge;
				can_wrap = true;
			}
			
			fire2_charge = 0;
		}
	}
	else
		fire2_cooldown--;
	//#endregion
	
//#endregion
//#region Effects
	// TODO: THINK OF A BETTER SOLUTION TO THIS MESS
	if(!(tick % move_trail_rate) && is_dead <= 0)
		repeat(move_trail_amount)
			with(spawn_debris(x, y))
			{
				speed = .1;
				image_xscale = 2.5;
				image_yscale = 2.5;
				fade_rate = .05;
				image_blend = other.image_blend;
			}
	
	// TODO: THIS AS WELL
	if(is_dead > 0)
	{
		if(!(tick % dead_blink_rate))
			image_alpha = not image_alpha;
		is_dead--;
	}
	
//#endregion
	