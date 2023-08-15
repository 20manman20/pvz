var _angle	= (cam_angle_r - angle_z + 720) % 360

sprite_index	= sprite_i[_angle div 45][0]

if sprite_i[_angle div 45][1] != -1 {
	image_index		= sprite_i[_angle div 45][1]
}

image_xscale	= sprite_i[_angle div 45][2]


event_inherited()

damage_cooldown	= lerp(damage_cooldown,0,.1)

if hp_ <= 0 instance_destroy()