// initing default asteroid
speed = random_range(0.5, 2);
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);
rotation_speed = random_range(1, 2); // sprite rotation speed
debris = 10; // number of debris it creates when destroyed
spawn_child = true; // can spawn child?
asteroid_health = 1; // asteroid health points
asteroid_max_health = 1; // stating health points
crack = true; // sprite "cracks"?

ore = irandom_range(0, ORES.COUNT - 1);
dramatic = false;
dramatic_anim = false;
