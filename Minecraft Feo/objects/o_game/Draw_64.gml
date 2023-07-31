draw_set_color(c_black)
draw_line_width(40,40,40+lengthdir_x(10,point_direction(0,0,vecx,vecy)),40+lengthdir_y(10,point_direction(0,0,vecx,vecy)),2)
draw_text(10,10,string(cam_index))

if instance_exists(o_player) draw_text(10,40,string(o_player.z))