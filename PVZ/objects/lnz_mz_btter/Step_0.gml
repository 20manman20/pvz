vspeed+=9.8/room_speed
var angulo = point_direction(x,y,x+hspeed*2,y+vspeed*2);

image_angle = angulo;

if y >= floor_ instance_destroy()