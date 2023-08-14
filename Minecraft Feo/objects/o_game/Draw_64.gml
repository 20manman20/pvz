display_set_gui_maximize(3,3)

draw_set_color(c_black)
draw_line_width(40,40,40+lengthdir_x(10,point_direction(0,0,vecx,vecy)),40+lengthdir_y(10,point_direction(0,0,vecx,vecy)),2)

//var _mx		= (mouse_y)/12+(mouse_x)/24 - 24
//var _my		= (mouse_y)/12-(mouse_x)/24 + 8
draw_text(10,40,string(floor(mx)))
draw_text(10,50,string(floor(my)))
draw_text(10,60,string(floor(mz)))


draw_sprite(Sprite50,0,512/2,288)

var _w	= 41
for (var i = 0; i <= 4; ++i) {
	draw_sprite_ext(Sprite48,i, 512/2 + (i-2)*_w ,288-13-plant[i,4],1,1,0,c_white,1) 
}

