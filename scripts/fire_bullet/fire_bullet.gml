//// fire_bullet(x, y, angle, damage, parent)
/// @param _x
/// @param _y
/// @param _angle
/// @param damage
/// @param parent
var _x = argument0, _y = argument1, _angle = argument2, damage = argument3, parent = argument4;

var bullet = instance_create_layer(_x, _y, "Instances", obj_bullet);
bullet.parent = parent;
bullet.direction = _angle;
bullet.damage = damage;
bullet.image_angle = _angle;
audio_play_sound(snd_zap, 1, false);

return bullet;
