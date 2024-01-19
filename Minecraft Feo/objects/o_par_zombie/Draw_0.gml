/*
		
var _prevzwrite	= gpu_get_zwriteenable()
var _prevztest	= gpu_get_ztestenable()
var _prevdepth	= gpu_get_depth()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)  

gpu_set_depth(drawdd)

var _drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
var _drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
draw_sprite_ext(s_z_conehead_00,image_index,_drawx,
					_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)
					
gpu_set_depth(drawdd-24)
var _drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
var _drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
draw_sprite_ext(s_z_conehead_01,image_index,_drawx,
					_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)

draw_text(_drawx,_drawy-10,gpu_get_depth())

gpu_set_zwriteenable(_prevzwrite)
gpu_set_ztestenable(_prevztest)
gpu_set_depth(_prevdepth)
//draw_text(_drawx,_drawy-64,z)
/*draw_sprite_ext(sprite_index,image_index,	drawx,drawy,image_xscale,image_yscale,0,image_blend,1)

if damage_down > 0 {
	shader_set(sh_damage_fx)
	var _yoff	= sprite_height/(height_scale)
	
	draw_sprite_part_ext(sprite_index,image_index,0,(sprite_height-_yoff),sprite_width,_yoff,drawx-sprite_get_xoffset(sprite_index),drawy-sprite_get_yoffset(sprite_index)+(sprite_height-_yoff),image_xscale,image_yscale,image_blend,damage_down/1.5)
	shader_reset()
}

if damage_up > 0 {
	shader_set(sh_damage_fx)
	var _yoff	= sprite_height/(height_scale)
	
	draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width,_yoff,drawx-sprite_get_xoffset(sprite_index),drawy-sprite_get_yoffset(sprite_index),image_xscale,image_yscale,image_blend,damage_up/1.5)
	shader_reset()
}

draw_text(drawx,drawy+12,damage_down)