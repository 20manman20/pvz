if health_ <= 0 exit
	
draw_set_halign(fa_center)

draw_set_font(global.lit_font)	

if summon	=	true {
	
draw_set_color(c_white)
	
	draw_text(x+5,y-sprite_height-2,string(zombie[i,1]))
	draw_text(x+4,y-sprite_height-1,string(zombie[i,1]))
	draw_text(x+4,y-sprite_height,string(zombie[i,1]))
	draw_text(x+4,y-sprite_height+1,string(zombie[i,1]))
	draw_text(x+6,y-sprite_height-1,string(zombie[i,1]))
	draw_text(x+6,y-sprite_height,string(zombie[i,1]))
	draw_text(x+6,y-sprite_height+1,string(zombie[i,1]))
	draw_text(x+5,y-sprite_height+2,string(zombie[i,1]))

}

draw_set_color(c_white)
draw_rectangle(x-4.8,y+1,x+5.2,y+2,false)
var col_ = make_color_rgb(255,51*((health_)/(20*health_max/100)),0)
draw_rectangle_color(x-4.8,y+1,x+(-4.8+2*(health_/(20*health_max/100))),y+2,col_, col_, col_, col_,false)
draw_set_color(c_white)

draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,1)

if summon = true {
	
	var color = make_color_rgb(116,93,76)
		
	draw_set_color(color)
	
	draw_text(x+5,y-sprite_height, string(zombie[i,1]))
	draw_text(x+5,y-sprite_height+1, string(zombie[i,1]))
	
	var color = make_color_rgb(185,166,124)
		
	draw_set_color(color) 
	
	draw_text(x+5,y-sprite_height-1,string(zombie[i,1]))
	
}

//draw_text(mouse_x,mouse_y+10,string(summon))
//draw_text(mouse_x,mouse_y-10,string(global.state))