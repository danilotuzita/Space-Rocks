move_wrap(true, true, sprite_width / 2);
image_angle += rotation_speed; // rotating sprite

if (asteroid_health <= 0) // if has no health anymore
	event_user(ASTEROID.EVENT_DESTROY);