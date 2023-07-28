var	h_index		= floor((health_-1)/500)
var nz_index	= clamp(h_index,0,3)

draw_sprite_ext(s_shadow,0,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)

draw_sprite_ext(s_nz,nz_index,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)

if dmg_alpha > 0 {
	shader_set(sh_color)
	shader_set_uniform_f(sh_dmg_color,dmg_alpha)
	draw_sprite_ext(s_nz,nz_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,.35)
	shader_reset()
}

draw_sprite_ext(sprite_index,image_index,x+1,y-11,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)

if h_index <= 1 {
	draw_sprite_ext(s_nz_eyes_up,h_index,x+1,y-11,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)
}

if h_index > 3 {
	draw_sprite_ext(s_nz_nut,h_index-4,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)
}