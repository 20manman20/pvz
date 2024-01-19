display_set_gui_size(cam_w,cam_h)
draw_set_valign(fa_middle)



//Solcito
var _sun_x	= 32
var _sun_y	= 24
draw_set_alpha(1)
draw_sprite(s_sun_gui,0,_sun_x,_sun_y)
var _prev_font	= draw_get_font()
/*
shader_set(sh_outline)

var texture		= font_get_texture(fnt_cost)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)
*/	
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(font_sun)
draw_text(_sun_x+19,_sun_y-1,string(sun_amount_r))
draw_set_font(_prev_font)

shader_reset()

//Dibujar macetas
var _w	= 40
draw_sprite(s_seeds_bg_00,0,cam_w/2,cam_h)

for (var i = 0; i < seeds_max; ++i) {
	var _x, _y
	_x	= seed[i,sd_pl.x_]
	_y	= seed[i,sd_pl.y_]
	
	var _cost	= seed[i,pl.cost] <= sun_amount
	var _load	= seed[i,sd_pl.load] >= (plant[seed[i,sd_pl.ind],pl.load]-.1)
	
	var _color	= make_color_hsv(0,0,(_cost && _load)*100+150)
	
	draw_sprite_ext(s_seeds_pots,i, _x ,_y,1,1,0,_color,1)
	draw_sprite_ext(s_seeds_plants,seed[i,sd_pl.ind],_x-2,_y-2,1,1,0,_color,1)
	//draw_sprite_part_ext(s_seeds_pots,seed[i,sd_pl.ind],0,0,40,40-40*seed[i,sd_pl.load]/plant[seed[i,sd_pl.ind],pl.load],_x-20,_y-40,1,1,c_black,.5)
	
	#region	Animación de carga
	var _xx		= seed[i,sd_pl.load]
	var _spr	= asset_get_index("s_seeds_head_0" + string(seed[i,sd_pl.ind]))		//sprite
	var _a		= sprite_get_number(_spr)											//frames
	var _b		= plant[seed[i,sd_pl.ind],pl.load]									//carga
	var _c		= sprite_get_speed(_spr)											//velocidad de sprite
	var _ind	= clamp(_xx*(_c/_a)*(_a-1)-(_b*_c-_a)*(_a-1)/_a,0,_a-1)
	draw_sprite_ext(_spr,_ind,_x,_y-30,1,1,0,_color,1)
	
	#endregion 
	
	//shader_set(sh_outline)

	//shader_set_uniform_f(sh_texel_handle,t_width,t_height)
	
	if level_type == lvl_tp.normal {
		draw_set_halign(fa_right)
		draw_set_font(font_cost)
		draw_set_color(_color)
		draw_set_alpha(1)
		draw_text(_x+14,_y-6,string(seed[i,sd_pl.cost]))
	}
	
	//shader_reset()
	
	draw_sprite_part_ext(s_seeds_pots,seed[i,sd_pl.ind],0,0,40,40-40*seed[i,sd_pl.load]/plant[seed[i,sd_pl.ind],pl.load],_x-20,_y-40,1,1,c_black,.35)
}

//draw_sprite(s_seeds_bg_01,1,cam_w/2,cam_h)
//draw_text(100,20,sun_fall_cad)
//draw_text(100,40,my)
//draw_text(100,60,mz)


/*draw_text(window_mouse_get_x()/window_scale,window_mouse_get_y()/window_scale-20,	string( clamp(mouse_x div 24,backyard_00[XX]-2,backyard_11[XX]+2))
																					+" "+
																					string( clamp(mouse_y div 24,backyard_00[YY]-2,backyard_11[YY]+2)))

for (var i = 0; i < mapw; ++i) {
	for (var j = 0; j < maph; ++j) {
		draw_text(2+i*10,2+j*10,map[help][# i,j][2])
	}
}