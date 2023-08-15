var _zombie	= instance_create_depth(x+lengthdir_x(CEL_W,angle_z),y+lengthdir_y(CEL_W,angle_z),depth,o_zombie)
_zombie.z	= z - 1
alarm[0]	= 60*irandom_range(20,24)