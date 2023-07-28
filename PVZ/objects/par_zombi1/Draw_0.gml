if health_ <= 0 exit

//draw_sprite(s_shadow,0,x+1,y)

//draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,false)

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

if new_turn {
	x_walk_index = x_to+hsp_max
}

draw_text(mouse_x,mouse_y-20,string(x_to))
draw_text(mouse_x,mouse_y-25,string(x_walk_index))
draw_text(mouse_x,mouse_y-30,string(x))
draw_text(mouse_x,mouse_y-35,string(hsp_))

if hsp_ != 0 {
	if floor(image_index) != image_number-1 {
		image_speed = 1
		draw_sprite(sprite_index,image_index,x_walk_index,y)
	} else {
		draw_sprite(sprite_index,image_index,x,y)
	}
} else {
	draw_sprite(sprite_index,image_index, x, y)
}

draw_set_color(c_white)
draw_rectangle(x-4.8,y+1,x+5.2,y+2,false)
var col_ = make_color_rgb(255,51*((health_)/(20*health_max/100)),0)
draw_rectangle_color(x-4.8,y+1,x+(-4.8+2*(health_/(20*health_max/100))),y+2,col_, col_, col_, col_,false)
draw_set_color(c_white)
//draw_text(x,y-40,string(freeze))

//draw_text(x,y-50,string(freeze))