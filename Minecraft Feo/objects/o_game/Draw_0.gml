draw_set_color(c_black)
draw_line_width(360,300,360+lengthdir_x(20,cam_index*360/32),300+lengthdir_y(20,cam_index*360/32),4)

draw_text(360+lengthdir_x(25,cam_index*360/32),300+lengthdir_y(25,cam_index*360/32),string(cam_index))