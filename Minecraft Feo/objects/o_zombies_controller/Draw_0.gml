var _prevzwrite		= gpu_get_zwriteenable()
var _prevztest		= gpu_get_ztestenable()
var _prevalphaten	= gpu_get_alphatestenable()
var _prevalphatre	= gpu_get_alphatestref()
var _prevdepth		= gpu_get_depth()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)
gpu_set_alphatestenable(true)
gpu_set_alphatestref(28)

with o_par_zombie {

	
	
	var _drawx	= x+lengthdir_x(-z/24*32,CAMERA_UP)
	var _drawy	= y+lengthdir_y(-z/24*32,CAMERA_UP)
	
	/*
	var sprite_00, sprite_01
	if height_ < 24		sprite_00	= sprite_i[_angle div 45][0]
	else {
		sprite_00	= sprite_i[_angle div 45][0][0]
		sprite_01	= sprite_i[_angle div 45][0][1]
		
		gpu_set_depth(depth-CEL_W)
		draw_sprite_ext(sprite_01,image_index,_drawx,
							_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)
		if damage_up > 0 {
			gpu_set_fog(true,c_white,0,1)
			draw_sprite_ext(sprite_01,image_index,_drawx,
							_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,c_red,damage_up/1.5)
			gpu_set_fog(false,c_white,0,1)
		}
	}
	
	gpu_set_depth(depth)
	draw_sprite_ext(sprite_00,image_index,_drawx,
						_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)
	if damage_down > 0 {
		gpu_set_fog(true,c_white,0,1)
		draw_sprite_ext(sprite_00,image_index,_drawx,
						_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,c_red,damage_down/1.5)
		gpu_set_fog(false,c_white,0,1)
	}
	gpu_set_depth(depth+2)
	draw_sprite_ext(s_plant_shadow,0,x+lengthdir_x(-z/24*32,CAMERA_UP),y+lengthdir_y(-z/24*32,CAMERA_UP),1,1,0,c_white,1)
	*/
	var sprite_00, sprite_01
	if sprite_i_1 != -1 {
		//sprite_00	= sprite_i[_angle div 45][0][0]
		//sprite_01	= sprite_i[_angle div 45][0][1]
		
		gpu_set_depth(depth-CEL_W)
		draw_sprite_ext(sprite_i_1,image_index,_drawx,
							_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)
		if damage_up > 0 {
			gpu_set_fog(true,c_white,0,1)
			draw_sprite_ext(sprite_i_1,image_index,_drawx,
							_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,c_red,damage_up/1.5)
			gpu_set_fog(false,c_white,0,1)
		}
		
		
	}
	
	gpu_set_depth(depth)
	draw_sprite_ext(sprite_i_0,image_index,_drawx,
						_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,image_blend,image_alpha)
	if damage_down > 0 {
		gpu_set_fog(true,c_white,0,1)
		draw_sprite_ext(sprite_i_0,image_index,_drawx,
						_drawy,image_xscale,2*image_yscale,image_angle+minus_cam_angle,c_red,damage_down/1.5)
		gpu_set_fog(false,c_white,0,1)
	}
	gpu_set_depth(depth+2)
	draw_sprite_ext(s_plant_shadow,0,x+lengthdir_x(-z/24*32,CAMERA_UP),y+lengthdir_y(-z/24*32,CAMERA_UP),1,1,0,c_white,1)
	
}


gpu_set_zwriteenable(_prevzwrite)
	gpu_set_ztestenable(_prevztest)
	gpu_set_alphatestenable(_prevalphaten)
	gpu_set_alphatestref(_prevalphatre)
	gpu_set_depth(_prevdepth)