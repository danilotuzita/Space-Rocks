//// fire_bullet(x, y, angle)
/// @param _x
/// @param _y
/// @param _angle
/// @param damage
var _x = argument0, _y = argument1, _angle = argument2, damage = argument3;

var bullet = instance_create_layer(_x, _y, "Instances", obj_bullet);
bullet.direction = _angle;
bullet.damage = damage;
audio_play_sound(snd_zap, 1, false);

return bullet;
