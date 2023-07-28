var	x_	=	30

if !p_ready {
	
	if point_area(mouse_x,mouse_y,x_,bg_y+1+64,x_+23*5-2,bg_y+18*3-1+64) {
	
		var	cas_x	=	((mouse_x-x_)/23)-frac((mouse_x-x_)/23)
		var	cas_y	=	((mouse_y-bg_y-64)/18)-frac((mouse_y-bg_y-64)/18)
	
		var i_p_	=	((((cas_y-1)*5)+(cas_x-1)))+6
	
		i_p	=	i_p_
	
		if !planta[i_p_]	{
	
			for (var a = 0; a <= i_max_p; a++) {
				if carta_p[a]	== noone {
					carta_p[a]	=	i_p_
					planta[i_p_]	=	true
					i_length_p++
					break
				}
			}
		
		}
	
	}  else if point_area(mouse_x,mouse_y,x_+32*4+2,bg_y,x_+32*4+24,bg_y+18*(i_max_p+1)-3) {
	
		var	i_y	=	((mouse_y-bg_y)/18)-frac((mouse_y-bg_y)/18)
	
		if carta_p[i_y] != noone {
		
			var a	=	carta_p[i_y]
			i_length_p--
			planta[a]	= false
			carta_p[i_y]			= noone	
		
		}
		
	}

}

var	x_	=	room_width - (30+23*5)

if !z_ready {
	
	if point_area(mouse_x,mouse_y,x_+1,bg_y+1+64,x_+23*5-2,bg_y+18*3-1+64) {
	
		var	cas_x	=	((mouse_x-x_)/23)-frac((mouse_x-x_)/23)
		var	cas_y	=	((mouse_y-bg_y-64)/18)-frac((mouse_y-bg_y-64)/18)
	
		var i_z_	=	((((cas_y-1)*5)+(cas_x-1)))+6
		
		i_z	=	i_z_	
	
		if !zombie[i_z_]	{
	
			for (var e = 0; e <= i_max_z; e++) {
				if carta_z[e]	== noone {
					carta_z[e]	=	i_z_
					zombie[i_z_]	=	true
					i_length_z++
					break
				}
			}
		
		}
	
	}  else if point_area(mouse_x,mouse_y,x_-15,bg_y,x_-15-22,bg_y+18*(i_max_z+1)-3) {
	
		var	i_y	=	((mouse_y-bg_y)/18)-frac((mouse_y-bg_y)/18)
	
		if carta_z[i_y] != noone{
		
			var a	=	carta_z[i_y]
			i_length_z--
			zombie[a]	= false
			carta_z[i_y]			= noone	
		
		}
		
	}
	
}

if point_area(mouse_x,mouse_y,30+5,bg_y+176,30+5+44,bg_y+176+23) && ((i_length_p-1) == i_max_p) {
	p_ready	= true
} 

if point_area(mouse_x,mouse_y,room_width - (145)+65,bg_y+176,room_width - (145)+109,bg_y+176+23) && ((i_length_z-1) == i_max_z) {
	z_ready	= true
} 
var	x_	=	30
var	y_	=	bg_y

if point_area(mouse_x,mouse_y,x_+24.5+24+58-12,y_+64+1-19-12,x_+24.5+24+58+12,y_+64+1-19+12) {
	if p_info_i < 2 {
		p_info_i++
	} else {
		p_info_i = 0
	}
}

var	x_	=	room_width - (30+23*5)

if point_area(mouse_x,mouse_y,x_+7.5-12,y_+64+1-19-12,x_+7.5+12,y_+64+1-19+12) {
	if z_info_i < 1 {
		z_info_i++
	} else {
		z_info_i = 0
	}
}