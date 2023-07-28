if health_ <= 0 exit

draw_sprite_ext(s_shadow,0,x,y,i_xscale,i_yscale,image_angle,image_blend,image_alpha)

if sprite_index = s_g {
	draw_sprite_ext(sprite_index,image_index,x,y,.5,.5,image_angle,c_white,image_alpha)
} else {
	draw_sprite_ext(sprite_index,image_index,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)
}

draw_set_font(global.lit_font)