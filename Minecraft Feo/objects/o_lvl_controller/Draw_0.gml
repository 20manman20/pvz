//draw_circle(corner_x,corner_y,15,false)

//draw_line_width(corner_x,corner_y,corner_x+lengthdir_x(64,-cam_angle),corner_y+lengthdir_y(64,-cam_angle),20)

//draw_line_width(corner_x,corner_y,corner_x+lengthdir_x(64,-cam_angle-90),corner_y+lengthdir_y(64,-cam_angle-90),20)

var _prevzwrite		= gpu_get_zwriteenable()
var _prevztest		= gpu_get_ztestenable()
var _prevalphaten	= gpu_get_alphatestenable()
var _prevalphatre	= gpu_get_alphatestref()
var _prevdepth		= gpu_get_depth()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)
gpu_set_alphatestenable(true)
gpu_set_alphatestref(128)

with o_par_block {
	gpu_set_depth(coordd)
	coorx	= drawx[cam_index]
	coory	= drawy[cam_index]
	coordd	= drawdd[cam_index]

	draw_sprite_ext(	sprite_index, cam_angle_frame,coorx,
						coory,1,2,minus_cam_angle,image_blend,1)
}

gpu_set_zwriteenable(_prevzwrite)
gpu_set_ztestenable(_prevztest)
gpu_set_alphatestenable(_prevalphaten)
gpu_set_alphatestref(_prevalphatre)
gpu_set_depth(_prevdepth)

//480 480
//24*8
var _dis	= point_distance(0,0,192,192)
//480 - 192 ; 480 + 192 ; 
var _prev	= draw_get_color()


/*
for (var i = 0; i < 4; ++i) {
	var _color	= (i mod 2) ? (#FFF6E5) : (#99826B)
	var _angle	= i*90
	draw_set_color(_color)
	if (abs(((cam_angle+_angle) % 360)-45) < 4) || abs(((cam_angle+_angle) % 360)-315) < 4 {
		line_shadow(	480+lengthdir_x(_dis,_angle+45),
						480+lengthdir_y(_dis,_angle+45),
						480+lengthdir_x(_dis,_angle+45+90),
						480+lengthdir_y(_dis,_angle+45+90),i)
	}
	
}
*
line_shadow(744,96,744,864,1)
line_shadow(216,96,672,96,2)
line_shadow(672,768,672,858,3)
line_shadow(216,768,672,768,4)


draw_set_color(_prev)
/*
draw_line_width(	480+lengthdir_x(_dis,45-90),				3
					480+lengthdir_y(_dis,45-90),
					480+lengthdir_x(_dis,45),
					480+lengthdir_y(_dis,45),3)
45					0
draw_line_width(	480+lengthdir_x(_dis,45),					0
					480+lengthdir_y(_dis,45),
					480+lengthdir_x(_dis,45+90),
					480+lengthdir_y(_dis,45+90),3)
315					4
draw_line_width(	480+lengthdir_x(_dis,45+90),				1
					480+lengthdir_y(_dis,45+90),
					480+lengthdir_x(_dis,45+90+90),
					480+lengthdir_y(_dis,45+90+90),3)
225					3
draw_line_width(	480+lengthdir_x(_dis,45+90+90),				2
					480+lengthdir_y(_dis,45+90+90),
					480+lengthdir_x(_dis,45+90+90+90),
					480+lengthdir_y(_dis,45+90+90+90),3)
135					2
draw_line_width(	480+lengthdir_x(_dis,45+90+90+90),			3
					480+lengthdir_y(_dis,45+90+90+90),
					480+lengthdir_x(_dis,45+90+90+90+90),
					480+lengthdir_y(_dis,45+90+90+90+90),3)
45					1
draw_line_width(	480+lengthdir_x(_dis,45+90+90+90+90),		0
					480+lengthdir_y(_dis,45+90+90+90+90),
					480+lengthdir_x(_dis,45+90+90+90+90+90),
					480+lengthdir_y(_dis,45+90+90+90+90+90),3)
*/
/*
|ax|
*/
