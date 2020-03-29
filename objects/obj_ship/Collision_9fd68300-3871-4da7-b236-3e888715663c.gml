if(invincible || is_dead > 0 || dashing) return; // if is invincible / dead / dashing: do nothing

event_user(SHIP.EVENT_DECREASE_LIVES); // calls Decrease Life

repeat(10) spawn_debris(x, y); // creates debris
// audio_play_sound(snd_die, 1, false); // play death sound
set_rumble(.0, .1, is_dead_delay, 0, 0); // setting rumble