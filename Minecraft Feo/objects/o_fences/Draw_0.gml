//for (var i = 0; i < 4; ++i*1.5-2) {
side	= [[1,1,-1,1],
				[1,-1,1,1],
				[-1,-1,1,-1],
				[-1,1,-1,-1]]
				
var val0	= 0

//135 225

if round(cam_angle/45+.5) >= 3 && round(cam_angle/45+.5) <= 6 {
	for (var i = 3; i >= 0; --i) {
	    draw_sprite_pos(sprite_index,i,	
						x+192*side[val0,2]+lengthdir_x(72*cam_angle_z,-cam_angle+90),
						y+i*1.5-2+2*side[val0,3]+lengthdir_y(72*cam_angle_z,-cam_angle+90),
						x+192*side[val0,0]+lengthdir_x(72*cam_angle_z,-cam_angle+90),
						y+i*1.5-2+2*side[val0,1]+lengthdir_y(72*cam_angle_z,-cam_angle+90),
						x+192*side[val0,0],
						y+i*1.5-2+2*side[val0,1],
						x+192*side[val0,2],
						y+i*1.5-2+2*side[val0,3],1)
	}
} else {
	for (var i = 0; i <= 3; ++i) {
	    draw_sprite_pos(sprite_index,i,	
						x+192*side[val0,2]+lengthdir_x(72*cam_angle_z,-cam_angle+90),
						y+i*1.5-2+2*side[val0,3]+lengthdir_y(72*cam_angle_z,-cam_angle+90),
						x+192*side[val0,0]+lengthdir_x(72*cam_angle_z,-cam_angle+90),
						y+i*1.5-2+2*side[val0,1]+lengthdir_y(72*cam_angle_z,-cam_angle+90),
						x+192*side[val0,0],
						y+i*1.5-2+2*side[val0,1],
						x+192*side[val0,2],
						y+i*1.5-2+2*side[val0,3],1)
	}
}

							
							
//}

/*
var drawx,drawy
	drawx	= x
	drawy	= y
	draw_sprite_ext(s_fences,cam_angle div 90,drawx,
							drawy,1,2*1,minus_cam_angle,c_white,1)