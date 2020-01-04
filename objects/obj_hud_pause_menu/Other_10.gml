/// @description Destroy
parent.pause_timeout = parent.pause_timeout_delay; // setting unpause delay
pause_game(); // unpause game
instance_destroy(); // destroy the instance
sprite_delete(sprite_index); // delete created sprite