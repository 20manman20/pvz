if health_ <= 0 exit

draw_sprite_ext(s_shadow,0,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)

draw_set_font(global.lit_font)

//draw_text(x,y-sprite_height-5,string(health_))

draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

if dmg_alpha > 0 {
	shader_set(sh_color)
	shader_set_uniform_f(sh_dmg_color,dmg_alpha)
	draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,.35)
	shader_reset()
}