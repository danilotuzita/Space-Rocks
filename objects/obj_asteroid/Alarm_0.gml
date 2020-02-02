/// @description Destroy dramatically alarm
if (yld_explode_anim(dramatic_explosion)) {
    alarm[ASTEROID.ALARM_DESTROY_DRAMATICALLY] = dramatic_explosion[0] * room_speed;
} else {
    // (finished exploding)
    instance_destroy();
}