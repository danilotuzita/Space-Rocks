/// @description Destroy
repeat(debris)
	instance_create_layer(x, y, "Instances", obj_debris); // creates some debris

instance_destroy(); // destroy the instance
