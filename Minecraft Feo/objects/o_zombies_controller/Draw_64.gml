display_set_gui_size(cam_w,cam_h)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)




var _bw	= 200
var _bh	= 14
var _bx	= cam_w/2-_bw/2-4
var _by	= 16
var _prevc	= draw_get_color()

draw_sprite_ext(s_zombie_hp_bar_0,0,_bx,_by,_bw/18,1,0,c_white,1)
draw_sprite_ext(s_zombie_hp_bar_1,0,_bx+3,_by+3,(_bw-6)/10*zombies_health_r/zombies_health_max,1,0,c_white,1)
//draw_set_color(c_white)
//draw_set_alpha(1)
var _r	= zombies_health_r/zombies_health_max
draw_sprite_ext(s_zombie_hp_bar_2,0,_bx+_bw*_r+(1-_r)*4,_by+_bh/2,1,1,0,c_white,1)

for (var i = 0; i < flags_n; ++i) {
	draw_sprite_ext(Sprite196, 0, _bx+_bw*flag[i], _by+_bh-2,1,1,0,c_white,1)
}

draw_set_halign(fa_middle)
if flag_text_bol {
	draw_text(cam_w/2,cam_h/2,"Horda p horda horda")
}
/*


//Solcito
var _brain_x	= cam_x+cam_w/3+30
var _brain_y	= 24
draw_set_alpha(1)
draw_sprite(s_brain_gui,0,_brain_x,_brain_y)

shader_set(sh_outline)

var texture		= font_get_texture(fnt_cost)
var t_width		= texture_get_texel_width(texture)
var t_height	= texture_get_texel_height(texture)

shader_set_uniform_f(sh_texel_handle,t_width,t_height)
	
draw_set_halign(fa_left)
//draw_text(_brain_x+18,_brain_y-1,string(brain_amount_r))
//draw_text(_brain_x+18,_brain_y+15,string(alarm[2]))
//draw_text(_brain_x+18,_brain_y+25,string(you_can))

shader_reset()


//Dibujar macetas
var _bw	= 41
draw_sprite(s_seeds_bg_z,0,512/2,288)

for (var i = 0; i < seeds_max; ++i) {
	var _x, _y
	_x	= 512/2 + (i-2)*_bw
	_y	= 288-13-seed[i,sd_zb.y_]
	draw_sprite_ext(s_seeds_zombies,seed[i,sd_zb.ind],_x-2-15,_y-2-24,1,1,0,c_white,1)
	draw_sprite_part_ext(s_seeds_zombies,seed[i,sd_zb.ind],0,0,32,24-24*seed[i,sd_zb.load]/zombie[seed[i,sd_zb.ind],zb.load],_x-2-15,_y-2-24,1,1,c_black,.5)
	
	shader_set(sh_outline)

	var texture		= font_get_texture(fnt_cost)
	var t_width		= texture_get_texel_width(texture)
	var t_height	= texture_get_texel_height(texture)

	shader_set_uniform_f(sh_texel_handle,t_width,t_height)
	
	draw_set_halign(fa_right)
	draw_set_font(fnt_00)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(_x+14,_y-6,string(zombie[seed[i,sd_zb.ind],zb.cost]))
	
	shader_reset()
}

draw_set_halign(fa_left)
draw_text(10,100,string(change_seed_i()))
draw_text(10,120,"["+string(mx)+","+string(my)+","+string(mz)+"]")