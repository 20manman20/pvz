event_inherited()

angle_z	= (angle_z+(keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D")))*90 + 360) % 360

var _angle	= (cam_angle_r + angle_z + 360) % 360

sprite_index	= sprite_i[_angle div 45][0]

if sprite_i[_angle div 45][1] != -1 {
	image_index		= sprite_i[_angle div 45][1]
}

image_xscale	= sprite_i[_angle div 45][2]