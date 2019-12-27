move_wrap(true, true, sprite_width / 2);
image_angle += rotation_speed;

if (asteroid_health <= 0)
	event_user(ASTEROID.EVENT_DESTROY);
