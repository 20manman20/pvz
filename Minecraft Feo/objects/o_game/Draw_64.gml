draw_set_color(c_black)
draw_line_width(40,40,40+lengthdir_x(10,point_direction(0,0,vecx,vecy)),40+lengthdir_y(10,point_direction(0,0,vecx,vecy)),2)

draw_text(10,40,string(instance_number(o_pea)))
