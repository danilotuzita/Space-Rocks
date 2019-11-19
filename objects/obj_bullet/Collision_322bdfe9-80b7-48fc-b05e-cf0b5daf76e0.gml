score += 10;

audio_play_sound(snd_die, 1, false);
with(other)
{
	asteroid_health -= other.damage; // deals damage to the asteroid
	image_alpha = 0; // apply blinking effect to the asteroid
}

if (bounce-- <= 0) // checks if needs to be destroyed decreases bounce count
	event_user(0); // destroy
else
{
	direction = -direction;     // inverts direction
	image_angle = -image_angle; // inverts angle
}