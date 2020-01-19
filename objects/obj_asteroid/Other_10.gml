/// @description Destroy
if (spawn_child)
switch(sprite_index) // spawning childs
{
	case spr_asteroid_huge:
		repeat(2)
			spawn_asteroid(x, y, spr_asteroid_medium, -1);
		break;
	case spr_asteroid_medium:
		repeat(2)
			spawn_asteroid(x, y, spr_asteroid_small, -1);
		break;
}

repeat(debris) // spawning debris
	instance_create_layer(x, y, "Instances", obj_debris);

instance_destroy();