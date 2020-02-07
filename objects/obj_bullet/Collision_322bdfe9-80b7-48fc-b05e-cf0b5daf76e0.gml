if (last_collision == other && last_collision_timer > 0) // if it already collided with this asteroid
	return; // do nothing

score += 10;
life_time += room_speed; // increase its life time
audio_play_sound(snd_die, 1, false);

with(other)
{
	asteroid_health -= other.damage; // deals damage to the asteroid
	image_alpha = 0; // apply blinking effect to the asteroid
}
last_collision = other;
last_collision_timer = .3 * room_speed;

if (bounce-- <= 0) // checks if needs to be destroyed decreases bounce count
	event_user(BULLET.EVENT_DESTROY); // destroy
else
{
	direction = -direction;     // inverts direction
	image_angle = -image_angle; // inverts angle
}
