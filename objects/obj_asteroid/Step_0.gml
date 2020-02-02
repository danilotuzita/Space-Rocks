if(dramatic_anim) return;

move_wrap(true, true, sprite_width / 2);
image_angle += rotation_speed; // rotating sprite

if (asteroid_health <= 0) // if has no health anymore
{
	if(dramatic)
	{
		dramatic_explosion = yld_explode_anim(0);
		alarm[ASTEROID.ALARM_DESTROY_DRAMATICALLY] = 1;
		spr = sprite_index;
		sprite_index = noone;
		dramatic_anim = true;
	}
	else
		event_user(ASTEROID.EVENT_DESTROY);
}