var s_index = s_spc_cart_p_UI//84 114
if index == "Zombi" s_index = s_spc_cart_z_UI
spc_cart_n	= lerp(spc_cart_n,spc_cart_i,0.1)

draw_set_circle_precision(24)

circle_r	= lerp(circle_r,circle_r_to,0.1)

draw_set_alpha(0.74)
draw_set_color(c_black)

draw_circle(x,y,circle_r,false)

draw_set_alpha(1)
	
if round(circle_r) != 0 {
	
	if keyboard_check(vk_up) && can_imput {
		if !(spc_cart_i > 0) {
			spc_cart_i	= 5
			spc_cart_n	= 6
		}
		else spc_cart_i--
		can_imput	= false
		alarm[0]	= 20
	}
	if keyboard_check(vk_down) && can_imput {
		if !(spc_cart_i < 5) {
			spc_cart_i	= 0
			spc_cart_n	= -1
		}
		else spc_cart_i++
		can_imput	= false
		alarm[0]	= 20
	}

	draw_set_color(c_white)

	draw_sprite_ext(s_index,1,
	x+(circle_r*1.2+5)*power(-1,index=="Zombi"),
	y+.5+1,
	1,1+-2*(index=="Zombi"),mean((spc_cart_n-spc_cart_i)*-40*power(-1,index=="Zombi")*circle_r/30,0)+180*(index=="Zombi"),image_blend,image_alpha)
	
}

draw_set_color(c_black)
draw_set_alpha(1)

draw_set_color(c_white)

for (var i = spc_cart_i-4; i <= spc_cart_i+4; ++i) {
	draw_sprite_ext(spc_carts_lit,i-(i>5)*6+(i<0)*6,
	x+lengthdir_x(max(0,circle_r-10),(i-spc_cart_n)*-40*power(-1,index=="Zombi")+180*(index=="Zombi"))/1.2+1*(index=="Zombi"),
	y+lengthdir_y(max(0,circle_r-10),(i-spc_cart_n)*-40*power(-1,index=="Zombi")+180*(index=="Zombi"))/1.2+1+1*(index=="Zombi"),1,1,
	mean((i-spc_cart_n)*-40*power(-1,index=="Zombi")*circle_r/30,0)+180*(index=="Zombi"),c_black,image_alpha)
	
	draw_sprite_ext(spc_carts_lit,i-(i>5)*6+(i<0)*6,
	x+lengthdir_x(max(0,circle_r-10),(i-spc_cart_n)*-40*power(-1,index=="Zombi")+180*(index=="Zombi"))/1.2+1*(index=="Zombi"),
	y+lengthdir_y(max(0,circle_r-10),(i-spc_cart_n)*-40*power(-1,index=="Zombi")+180*(index=="Zombi"))/1.2+1+1*(index=="Zombi"),1,1,
	mean((i-spc_cart_n)*-40*power(-1,index=="Zombi")*circle_r/30,0)+180*(index=="Zombi"),image_blend,1-(abs(i-spc_cart_n)*.15)*circle_r/30)
}

draw_sprite(s_index,0,x,y+1.5)

if circle_r != 0 {
	
	draw_set_alpha(circle_r/30)

	draw_set_font(Aharoni)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	var color_	= make_color_rgb(15,72,76)
	if index == "Zombi" color_ = make_color_rgb(51,38,38)
	
	draw_set_color(color_)
	
	draw_text_transformed(x,y+2+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)
	draw_text_transformed(x,y-1+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)
	draw_text_transformed(x+1,y+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)
	draw_text_transformed(x-1,y+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)
	
	var color_	= make_color_rgb(43,121,127)
	if index == "Zombi" color_ = make_color_rgb(127,102,112)
	
	 draw_set_color(color_)
	
	draw_text_transformed(x,y+1+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)
	draw_set_color(c_white)
	draw_text_transformed(x,y+2,string(spc_cart[spc_cart_i]),circle_r/30,circle_r/30,image_angle)

	draw_set_alpha(1)

}

draw_set_valign(fa_top)
