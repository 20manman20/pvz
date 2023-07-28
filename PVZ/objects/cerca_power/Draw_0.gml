draw_self()
/*if health_ <= 0 exit

//draw_sprite(s_shadow,0,x,y)

draw_set_color(c_white)
draw_rectangle(x-5+15,y+1,x+5+15,y+2,false)
var col_ = make_color_rgb(255,51*5*health_/health_max,0)
var h	= (-4.8)+10*(health_/health_max)
draw_rectangle_color( x - 5+15, y +1, x + h+15, y +2, col_, col_, col_, col_, false)
draw_set_color(c_white)

draw_set_font(global.lit_font)

//draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,false)