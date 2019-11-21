image_angle += rotation_speed;

// wrap movement
if(can_wrap) move_wrap(true, true, sprite_width / 2);

// if life_span has run out
if(life_time-- < 0)	event_user(0); // destroy

// last collision cooldown
last_collision_timer--;