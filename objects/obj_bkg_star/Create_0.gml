/// @description Insert description here
// You can write your code in this editor

x = irandom(room_width);
y = irandom(room_height);

size = irandom(2);
color = make_color_rgb(255, 255, 255);
alpha = 1;
offset1 = room_speed * (irandom(1) + .5);
offset2 = room_speed * (irandom(2) + 1);

alarm[0] = chance(3) * offset1;
alarm[2] = chance(24) * offset2;