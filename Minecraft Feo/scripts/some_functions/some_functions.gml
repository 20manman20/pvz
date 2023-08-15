#macro	INSQRT2			(0.707)				//power(2,-.5)

enum TILE {
	SPRITE,
	Z
}

#macro	XX				0
#macro	YY				1
#macro	ZZ				2

#macro	HH				0
#macro	VV				1

#macro	CENTER_X		(room_width/2*INSQRT2)		
#macro	CENTER_Y		(room_height/2*INSQRT2)

#macro	VIEW_NUM		240
#macro	CEL_W			24

#macro	MAP_W			40
#macro	MAP_H			24


//0.707 es seno de 45°

#macro	CAMERA_UP		(-cam_angle)

function iso_construction(layer_name,_z) {
	layer_set_visible(layer_name,false)
	var tile_map	= layer_tilemap_get_id(layer_name)

	var tile_data, tile_o, tile_index
	
	for (var tx	= 0; tx < MAP_W; tx++) {
		for (var ty	= 0; ty < MAP_H; ty++) {
			tile_index	= tilemap_get(tile_map,tx,ty)
			tile_data	= tile_get_index(tile_index)
			map[_z][# tx, ty]	= [0,noone,-1]
			
			if tile_data > 0 {
				tile_o					= instance_create_depth((tx+.5)*CEL_W,(ty+.5)*CEL_W,depth,blocks[tile_data-1])
				tile_o.z				= -_z*CEL_W
				map[_z][# tx, ty]		= [tile_data,noone,0]
			}
			
			
		}
	}
}

/*
function place_meeting_3d(_x,_y,_z,_obj) {
	//var _height	= height

	var target_ds	= ds_list_create()
	var target_i	= instance_place_list(_x,_y,_obj,target_ds,0)

	var xymeeting	= 0

	if target_i > 0	{
		for (var i = 0; i < target_i; ++i) {
			if rectangle_in_rectangle(0,target_ds[| i].z,1,target_ds[| i].z-target_ds[| i].height_,
				0, _z-1,1,_z-height_) {
				xymeeting	= target_ds[| i]
				break
			} else {
			}
		}
	}

	ds_list_destroy(target_ds)
	return	xymeeting
}
*/

#region		Coordenadas de Dibujo 3D
function axis_x(x_,y_,anglex) {
	var D	= point_distance(x_*INSQRT2,y_*INSQRT2,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_*INSQRT2-CENTER_Y,x_*INSQRT2-CENTER_X)
	return D*dcos(anglex+Ax)	+ room_width/2
}

function axis_z(z_,anglez) {
	return z_*lengthdir_y(1,90-anglez) + CENTER_Y
}

function axis_y(x_,y_,anglex,anglez) {
	var D	= point_distance(x_*INSQRT2,y_*INSQRT2,CENTER_X,CENTER_Y)
	var Ax	= darctan2(y_*INSQRT2-CENTER_Y,x_*INSQRT2-CENTER_X)
	return D*dsin(anglex+Ax)*lengthdir_y(1,anglez) + room_height/2
} 

function axis_dd(_x,_y,anglex) {
	var drawy		= axis_y(_x,_y,anglex,330)
	//drawy solapadas en el suelo
	//(- +)z se ve detrás o adelante al saltar
	return ((-drawy+400) + z/1.5)
}
#endregion

function lerp_angle(val1,val2, amount) {
	var angle_diff = angle_difference(val1,val2)

	val2 = val1-angle_diff

	return lerp(val1, val2, amount);
}

function spin_camera() {
	vecx			= lerp(vecx,lengthdir_x(1,cam_angle_r),angle_spd)
	vecy			= lerp(vecy,lengthdir_y(1,cam_angle_r),angle_spd)

	cam_angle		= point_direction(0,0,vecx,vecy) % 360
	cam_index		= round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM)

	var	a_hinput	= keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("D"))//mouse_wheel_up()-mouse_wheel_down()

	cam_angle_r		= (cam_angle_r+cam_ang_change*a_hinput+360)%360
	
	if a_hinput != 0 {
		spin_state	= 1
		alarm[1]	= 40
	}
}
	
function change_seed_i() {
	if point_in_rectangle(mouse_x,mouse_y,room_width/2-2.5*41,cam_h+cam_y-13-40,room_width/2+2.5*41,cam_h+cam_y-13) {
		seed_i	= (mouse_x-room_width/2+41*2.5) div 41
	} else seed_i	= -1
}

function place_meeting_3d(_x,_y,_z) {
	
	var _x1 = (bbox_left+(_x-x))	div CEL_W,
	    _y1 = (bbox_top+(_y-y))		div CEL_W,
	    _x2 = (bbox_right+(_x-x))	div CEL_W,
	    _y2 = (bbox_bottom+(_y-y))	div CEL_W,
		_z1	= (floor((-_z-CEL_W/2)/CEL_W+.5)),
		_z2	= (floor((-(_z-height_)-CEL_W/2)/CEL_W+.5))
		
	for(var i = _x1; i <= _x2; i++){
		for(var j = _y1; j <= _y2; j++){
			for (var k = _z1; k <= _z2 ; ++k) {
				if in_range(k,MIN_Z_LAYER,MAX_Z_LAYER) {
					if map[k][# i, j][0] > 0 {
						return true
					}
				}
			}
			
		}
	}

	return false
}