score += 10;

audio_play_sound(snd_die, 1, false);
with(other)
{
	asteroid_health -= other.damage;
	image_alpha = 0;
}

if (penetration-- <= 0)
	instance_destroy();
else
	direction = -direction;