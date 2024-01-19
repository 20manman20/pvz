//draw_sprite(mask_index,0,x,y)
//image_alpha	= (bol_ready)*.6+.4
//draw_sprite_ext(s_plant_shadow,0,x+lengthdir_x(-z/24*32,CAMERA_UP),y+lengthdir_y(-z/24*32,CAMERA_UP),1,1,0,c_white,image_alpha)
//draw_3d()
/*
draw_sprite_ext(s_plant_shadow,0,drawx,drawy,1,1,0,c_white,image_alpha)

if !bol_ready && map[map_pos[ZZ]][# map_pos[XX], map_pos[YY]][2] != -1 {
	image_alpha	= 0
} else image_alpha	= (bol_ready)*.6+.4

draw_sprite_ext(sprite_index,image_index,drawx,drawy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if damage_cooldown > 0 {
	shader_set(sh_damage_fx)
	draw_sprite_ext(sprite_index,image_index,drawx,drawy,image_xscale,image_yscale,image_angle,image_blend,damage_cooldown)
	shader_reset()
}


//draw_text(drawx,drawy-32,angle_z)
//draw_text(drawx,drawy-16,bol_ready)

