display_set_gui_maximize(3,3)

draw_set_color(c_black)
draw_line_width(40,40,40+lengthdir_x(10,point_direction(0,0,vecx,vecy)),40+lengthdir_y(10,point_direction(0,0,vecx,vecy)),2)

draw_text(10,40,cam_angle_r)

draw_sprite(Sprite50,0,512/2,288)

var _w	= 41
for (var i = 0; i <= 4; ++i) {
	draw_sprite_ext(Sprite48,i, 512/2 + (i-2)*_w ,288-14,1,1,0,c_white,1)
}
