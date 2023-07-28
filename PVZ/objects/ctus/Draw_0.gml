//draw_self()
draw_set_color(c_black)
draw_set_alpha(.35)
if instance_exists(create_x) {
	if (create_x.x>=(x+8)) != 0 {
		draw_rectangle(x+8,y-12+9.5,create_x.x*(create_x.x>=(x+8)),y-11+9.5,false)
	}
}

draw_set_alpha(1)

event_inherited()

draw_set_color(make_color_rgb(190,47,13))
if instance_exists(create_x) {
	draw_rectangle(x+1,y-12,create_x.x,y-11,false)
}