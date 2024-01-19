
var _prevzwrite		= gpu_get_zwriteenable()
var _prevztest		= gpu_get_ztestenable()
var _prevalphaten	= gpu_get_alphatestenable()
var _prevalphatre	= gpu_get_alphatestref()
var _prevdepth		= gpu_get_depth()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)
gpu_set_alphatestenable(true)
gpu_set_alphatestref(28)

with o_par_plant {
	gpu_set_depth(depth)
	image_alpha	= (bol_ready)*.6+.4
	draw_sprite_ext(s_plant_shadow,0,x+lengthdir_x(-z/24*32,CAMERA_UP),y+lengthdir_y(-z/24*32,CAMERA_UP),1,1,0,c_white,image_alpha)
	draw_3d(sprite_index,image_index,x,y,z,i_scale[HH]*image_xscale,i_scale[VV])
	if damage_cooldown > 0 {
		gpu_set_fog(true,c_white,0,1)
		draw_3d(sprite_index,image_index,x,y,z,i_scale[HH]*image_xscale,i_scale[VV],image_angle,image_blend,damage_cooldown/1.5)
		gpu_set_fog(false,c_white,0,1)
	}
}

with o_sun {
	gpu_set_depth(depth)
	draw_3d()
}

if mouse_in_backyard && in_range(my,backyard_00[YY],backyard_11[YY]) {
	gpu_set_depth(1000)
	draw_set_color(make_color_hsv(0,150,60))
	draw_set_alpha(.2)
	draw_rectangle(backyard_00[XX]*CEL_W,my*CEL_W,backyard_11[XX]*CEL_W,(my+1)*CEL_W,false)
	
}

gpu_set_zwriteenable(_prevzwrite)
gpu_set_ztestenable(_prevztest)
gpu_set_alphatestenable(_prevalphaten)
gpu_set_alphatestref(_prevalphatre)
gpu_set_depth(_prevdepth)