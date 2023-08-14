var _angle	= (cam_angle_r + angle_z + 360) % 360
image_index		= _angle div 90
draw_sprite_ext(sprite_index,image_index,drawx[| cam_index],
							drawy[| cam_index],1,1,0,image_blend,1)