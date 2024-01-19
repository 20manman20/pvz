/*
var _prevzwrite		= gpu_get_zwriteenable()
var _prevztest		= gpu_get_ztestenable()
var _prevdepth		= gpu_get_depth()
var _prevalphaten	= gpu_get_alphatestenable()
var _prevalphatre	= gpu_get_alphatestref()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)
gpu_set_depth(coordd)
gpu_set_alphatestenable(true)
gpu_set_alphatestref(128)

//var _ind	= floor(cam_angle/11.25+.5)

draw_sprite_ext(sprite_index, cam_angle_frame,x+lengthdir_x(-z/24*32,CAMERA_UP),
							y+lengthdir_y(-z/24*32,CAMERA_UP),1,2,minus_cam_angle,image_blend,1)
							draw_set_font(Font4)

draw_sprite_ext(sprite_index, cam_angle_frame,coorx,
							coory,1,2,minus_cam_angle,image_blend,1)
							draw_set_font(Font4)



gpu_set_zwriteenable(_prevzwrite)
gpu_set_ztestenable(_prevztest)
gpu_set_depth(_prevdepth)
gpu_set_alphatestenable(_prevalphaten)
gpu_set_alphatestref(_prevalphatre)
*/
/*
var _ind	= floor(cam_angle/11.25+.5)
draw_sprite_ext(sprite_index, _ind,x+lengthdir_x(-z/24*32,CAMERA_UP),
							y+lengthdir_y(-z/24*32,CAMERA_UP),1,2,minus_cam_angle,image_blend,1)
							draw_set_font(Font4)


//draw_sprite(mask_index,0,x,y)
/*
draw_sprite_ext(sprite_index,image_index,coorx,
							coory,1,1,0,image_blend,1)