
sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_medium,
	spr_asteroid_huge
);

switch(sprite_index)
{
	case spr_asteroid_small:
		asteroid_health = 1;
		break;
	case spr_asteroid_medium:
		asteroid_health = 3;
		break;
	case spr_asteroid_huge:
		asteroid_health = 5;
		break;
	default:
		asteroid_health = 1;
		break;
}

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
speed = random_range(0.5, 2);
rotation_speed = random_range(1, 2);
