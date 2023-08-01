draw_set_color(c_black)
draw_line_width(40,40,40+lengthdir_x(10,cam_angle),40+lengthdir_y(10,cam_angle),2)
draw_text(10,10,string(cam_angle))

if instance_exists(o_player) draw_text(10,40,string(o_player.z))