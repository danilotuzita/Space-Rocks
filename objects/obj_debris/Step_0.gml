image_alpha	-= fade_rate; // fades it

if(image_alpha <= 0) // if is not visible anymore
	instance_destroy(); // destroy it
