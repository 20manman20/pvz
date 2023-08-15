display_set_gui_maximize(3,3)

draw_set_color(c_black)
var _cr, _cx, _cy
_cr	= 10
_cx	= 20
_cy	= 240
draw_circle(_cx,_cy,10,true)
draw_line_width(_cx,_cy,_cx+lengthdir_x(_cr,point_direction(0,0,vecx,vecy)),_cy+lengthdir_y(_cr,point_direction(0,0,vecx,vecy)),2)

//var _mx		= (mouse_y)/12+(mouse_x)/24 - 24
//var _my		= (mouse_y)/12-(mouse_x)/24 + 8
draw_set_valign(fa_middle)

draw_set_halign(fa_left)
draw_text(10,50,string(seed_i))
draw_text(10,60,string(floor(mx)))
draw_text(10,70,string(floor(my)))
draw_text(10,80,string(floor(mz)))

draw_set_alpha(.6)
draw_rectangle(40+4,40-8,40+48,40+8,false)
draw_set_alpha(1)
draw_sprite(s_sun_gui,0,40,40)
draw_set_color(c_white)
draw_text(56,40,string(sun_amount_r))
draw_set_color(c_black)

//Dibujar macetas
var _w	= 41
draw_sprite(s_seeds_bg,0,512/2,288)
for (var i = 0; i <= 4; ++i) {
	var _x, _y
	_x	= 512/2 + (i-2)*_w
	_y	= 288-13-seed[i,pl_sd.y_]
	draw_sprite_ext(s_seeds_pots,i, _x ,_y,1,1,0,c_white,1)
	draw_sprite_ext(s_seeds_plants,seed[i,pl_sd.ind],_x-2,_y-2,1,1,0,c_white,1)
	draw_sprite_part_ext(s_seeds_pots,seed[i,pl_sd.ind],0,0,40,40-40*seed[i,pl_sd.load]/plant[seed[i,pl_sd.ind],pl.load],_x-20,_y-40,1,1,c_black,.5)
	draw_text(_x,_y-20,string(seed[i,pl_sd.cost]))
}

