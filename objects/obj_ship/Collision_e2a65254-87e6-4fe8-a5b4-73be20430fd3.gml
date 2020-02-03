if (lives >= max_lives)
	return;

event_user(SHIP.EVENT_INCREASE_LIVES); // calls Increase Life

with(other) // destroy the power up
	instance_destroy();