var col_planta = instance_place(x,y,par_planta) 
var col_zombie = instance_place(x,y,par_zombi)

if col_planta {
	draw_set_color(c_white)
	draw_rectangle(col_planta.x-5,col_planta.y+1,col_planta.x+5,col_planta.y+2,false)
	var col_ = make_color_rgb(255,51*5*col_planta.health_/col_planta.health_max,0)
	var h	= (-4.8)+10*(col_planta.health_/col_planta.health_max)
	draw_rectangle_color( col_planta.x - 5, col_planta.y +1, col_planta.x + h, col_planta.y +2, col_, col_, col_, col_, false)
	draw_set_color(c_white)
}

