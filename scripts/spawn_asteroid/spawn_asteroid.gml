/// @param _x
/// @param _y
/// @param sprite
/// @param overwrite_health
var _x = argument0, _y = argument1, sprite = argument2, overwrite_health = argument3;

var asteroid = instance_create_layer(_x, _y, "Instances", obj_asteroid);

with (asteroid)
{
    sprite_index = sprite <= 0 ? // if sprite is not provided
        choose(spr_asteroid_small, spr_asteroid_medium, spr_asteroid_huge) : // choose a random sprite
        sprite; // sets the provided sprite
    
    // default asteroid health
    switch(sprite_index)
    {
    	case spr_asteroid_small:
    		asteroid_health = .5;
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
    
    // if the overwrite_health is provided
    if (overwrite_health > 0)
        asteroid_health = overwrite_health; // sets the health
    
    asteroid_max_health = asteroid_health; // saves the max_health
}

return asteroid;
