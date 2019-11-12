/// @description Destroy
switch(sprite_index)
{
	case spr_asteroid_huge:
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
			new_asteroid.asteroid_health = 3;
		}
		break;
	case spr_asteroid_medium:
		repeat(2)
		{
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
			new_asteroid.asteroid_health = 1;
		}
		break;
}

repeat(10)
	instance_create_layer(x, y, "Instances", obj_debris);

instance_destroy();
