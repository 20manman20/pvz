if health_ <= 0 exit

draw_sprite_ext(s_shadow,0,x+1,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

//draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,false)

//shader_set(sh_color);

/*
if freeze = 0 {
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
} else {
	if freeze_type	= "ice" {
		col_ = make_color_rgb(72,193,240)
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,col_,1)
	}
	if freeze_type	= "butter" { 
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)
		draw_sprite(s_butter_fx,freeze-1,x-5,y-19)
	}
}
*/
draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,image_alpha)

draw_set_color(c_white)
draw_rectangle(x-4.8,y+1,x+5.2,y+2,false)
var col_ = make_color_rgb(255,51*((health_)/(20*health_max/100)),0)
draw_rectangle_color(x-4.8,y+1,x+(-4.8+2*(health_/(20*health_max/100))),y+2,col_, col_, col_, col_,false)
draw_set_color(c_white)
//draw_text(x,y-40,string(freeze))

//draw_text(x,y-50,string(freeze))

//shader_reset();

i_xscale	= lerp( i_xscale, image_xscale, .1)

if dmg_alpha > 0 {
	shader_set(sh_color)
	shader_set_uniform_f(sh_dmg_color,dmg_alpha)
	draw_sprite_ext(sprite_index,image_index,x,y,i_xscale*dir_x,1/i_xscale,image_angle,image_blend,.35)
	shader_reset()
}