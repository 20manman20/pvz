if health_ <= 0 exit

draw_sprite_ext(s_shadow,0,x,y,i_xscale,1/i_xscale,image_angle,c_white,image_alpha)

draw_set_font(global.lit_font)

//draw_text(x,y-sprite_height-5,string(health_))
draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

draw_sprite_ext(s_vna_i,5,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

//Cabeza Cuarto
if vna_value > 3 draw_sprite(s_lzg_head_idle,image_index,x+6,y-8)

draw_sprite_ext(s_vna_i,4,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(s_vna_i,3,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

//Cabeza Tres
if vna_value > 2 draw_sprite(s_lzg_head_idle,image_index,x-2,y-17)

//Cabeza Uno
draw_sprite(s_lzg_head_idle,image_index,x,y-6)

//Cabeza Dos
if vna_value > 1 draw_sprite(s_lzg_head_idle,image_index,x-1,y-12)

draw_sprite_ext(s_vna_i,2,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(s_vna_i,1,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

//Cabeza Cinco
if vna_value > 4 draw_sprite(s_lzg_head_idle,image_index,x-7,y-8)

draw_sprite_ext(s_vna_i,0,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

/*
if dmg_alpha > 0 {
	shader_set(sh_color)
	shader_set_uniform_f(sh_dmg_color,dmg_alpha)
	draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,.35)
	shader_reset()
}
