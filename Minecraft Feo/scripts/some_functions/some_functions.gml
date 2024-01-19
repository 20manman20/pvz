function iso_construction(_layer,_z) {
	layer_set_visible(_layer,false)
	var tile_map	= layer_tilemap_get_id(_layer)

	var tile_data, tile_o, tile_index, tile_r, tile_f, tile_m, tile_a
	
	for (var tx	= 0; tx < mapw; tx++) {
		for (var ty	= 0; ty < maph; ty++) {
			tile_index	= tilemap_get(tile_map,tx,ty)
			tile_data	= tile_get_index(tile_index)
			tile_r	= tile_get_rotate(tile_index)
			tile_f		= tile_get_flip(tile_index)
			tile_m		= tile_get_mirror(tile_index)
			
			var _rot_ind	= tile_r*4+tile_f*2+tile_m
			switch (_rot_ind) {
			    case 0:	tile_a	= 0
			        break
			    case 7: tile_a	= 90
			        break
				case 3: tile_a	= 180
					break
				case 4: tile_a	= 270
					break 
			}
			
			map[_z][# tx, ty]	= [0,noone,-1]
			
			if tile_data > 0 {
				tile_o					= instance_create_depth((tx+.5)*CEL_W,(ty+.5)*CEL_W,depth,blocks[tile_data-1])
				tile_o.z				= -_z*CEL_W
				tile_o.angle_z			= tile_a
				//map[_z][# tx, ty]		= [tile_data,tile_o,0]
			}
			
			
		}
	}
}

#region	Coordenadas de Dibujo 3D
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

function axis_dd(_x = x,_y = y,_z = z, _cam_angle = cam_angle) {
	return 2*dot_product(_x, _y, lengthdir_x(1, (-_cam_angle+90)), lengthdir_y(1, (-_cam_angle+90)))-2000 + _z
}
#endregion

function acc_angle(_cur_ang,_new_ang,_spd) {
	_cur_ang	= _cur_ang % 360
	_new_ang	= _new_ang % 360
	var _diff	= _new_ang - _cur_ang
	_diff	+= _diff>180 ? -360 : (_diff <- 180 ? 360 : 0);
	var _interp = sign(_diff)*min(abs(_diff),abs(_spd))
	return (360+_cur_ang-_interp) % 360
}

function spin_camera() {
	vecx			= lerp(vecx,lengthdir_x(1,cam_angle_r),angle_spd)
	vecy			= lerp(vecy,lengthdir_y(1,cam_angle_r),angle_spd)

	cam_angle		= point_direction(0,0,vecx,vecy) % 360
	cam_index		= clamp(round(round(cam_angle)/(360/VIEW_NUM) % VIEW_NUM),0,VIEW_NUM-1)

	var	a_hinput0	= (mouse_wheel_up()-mouse_wheel_down())
	var a_hinput1	= (P_INPUT_WS)
	
	var a_hinput	= 0
	
	if a_hinput0 != 0 a_hinput	= a_hinput0
	else a_hinput	= a_hinput1
	
	cam_angle_r		= (cam_angle_r+cam_ang_change*a_hinput+360)%360
	
	if a_hinput != 0 {
		spin_state	= 1
		spin_dir	= sign(angle_difference(cam_angle,cam_angle_r))
		alarm[1]	= 240
		spin_from	= spin_to
		spin_to		= cam_angle_r
	}
}
	
function change_seed_i() {
	if point_in_rectangle(window_mouse_get_x()/window_scale,window_mouse_get_y()/window_scale,cam_w/2-3.5*40,cam_h-13-40,cam_w/2-40+40*(seeds_max*!level_type+7*level_type),cam_h-13) {
		var _i	= -1
		for (var i = 0; i < seeds_max; ++i) {
			//40 40
			var _x	= window_mouse_get_x()/window_scale
			var _y	= window_mouse_get_y()/window_scale
			if point_in_rectangle(_x,_y,seed[i,sd_pl.x_]-20,seed[i,sd_pl.y_]-40,seed[i,sd_pl.x_]+20,seed[i,sd_pl.y_]) {
				_i	= clamp(i,0,min(seeds_max,7)-1)
				break
			} 
		}
		return _i
		//return	clamp(((window_mouse_get_x()/window_scale-cam_w/2+3.5*40) div 40),0,min(7,seeds_max)-1)
	} else return (-1)
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
				if in_range(k,MIN_Z_LAYER,max_z_layer) {
					if map[k][# i, j][2] != map_tp.nn {
						return map[k][# i, j][2]
					}
				}
			}
			
		}
	}
	return (-1)
}

function map_meeting(_x,_y,_z) {
	
	var _x1 = (bbox_left+(_x-x))	div CEL_W,
	    _y1 = (bbox_top+(_y-y))		div CEL_W,
	    _x2 = (bbox_right+(_x-x))	div CEL_W,
	    _y2 = (bbox_bottom+(_y-y))	div CEL_W,
		_z1	= (floor((-_z-CEL_W/2)/CEL_W+.5)),
		_z2	= (floor((-(_z-height_)-CEL_W/2)/CEL_W+.5))
		
	for(var i = _x1; i <= _x2; i++){
		for(var j = _y1; j <= _y2; j++){
			for (var k = _z1; k <= _z2 ; ++k) {
				if in_range(k,MIN_Z_LAYER,max_z_layer) {
					if map[k][# i, j][2] != map_tp.nn {
						return map[k][# i, j]
					}
				}
			}
			
		}
	}

	return (-1)
}

function put_zombie(_z_id, _tomb_i) {
	if tombstone_n > 0 && tombstone[_tomb_i,0] != noone {
		var _col_z	= 0
		with tombstone[_tomb_i,0] {
			_col_z	= place_meeting(x+lengthdir_x(CEL_W,angle_z),y+lengthdir_y(CEL_W,angle_z),o_par_zombie)
		}
		
		if !_col_z {
			if tombstone[_tomb_i,1] == 0 {
				brain_amount	-= zombie[_z_id,zb.cost]
				with tombstone[_tomb_i,0] {
					var _y	= y
					if zombie_ind == 1 {
						_y	= y+choose(-1,1)*CEL_W/2
					}
					var _zombie	= instance_create_depth(x+lengthdir_x(CEL_W,angle_z),_y+lengthdir_y(CEL_W,angle_z),depth,zombie[_z_id,zb.obj])
					_zombie.z	= z - 1
				}
				bol_zombie_left			= true
				tombstone[_tomb_i,1]	+= irandom_range(2,4)+3*(tombstone_max-tombstone_n)/((tombstone_max-1))
				/*
				level_state				= lvl_st.play
				seed_i					= -1
				tombstone_i				= -1
				*/
			} else	alarm[2]	= irandom_range(45,75)
		} else alarm[2]		= 1
	}
}

function turn_basic_zombie() {
	if hp_ <= 200 {
		instance_destroy()
		
		var _zb	= instance_create_depth(x,y,depth,o_zombie)
		_zb.z			= z
		_zb.state		= z_st.tobasic
		_zb.damage_down	= 1
		_zb.damage_up	= 1
			
	}
}

function add_brains(amount_) {
	if instance_exists(o_zombies_controller) {
		with o_zombies_controller {
			alarm[2]	= irandom_range(12,60)//+160/instance_number(o_tombstone_par)
		}
	}
	brain_amount += amount_
}

function room_trans(_rm, _spd = 1.5) {
	trans			= 1;
	with o_game {
		if trans_val_an > 90 {
			trans_val_an = 180 - trans_val_an
		}
	}
	trans_room_to	= _rm;
	trans_spd		= _spd
}

function near_flag() {
	var _tlvl	= zombies_health/zombies_health_max
	var _dis	= _tlvl - flag[flag_i]
	return  (flags_n > 0) && !((flag[flag_i] < _tlvl) && (_dis > 0))
}
	
function event_death() {
	if instance_exists(o_zombies_controller) {
		with o_zombies_controller {
			if !near_flag() {
				add_brains(zombie[other.zombie_ind,zb.cost])
			}
			//
		}
	}

	if instance_exists(hitbox_atk) {
		instance_destroy(hitbox_atk)
	}

	if instance_exists(hitbox_stomp) {
		instance_destroy(hitbox_atk)
	}

}	
	
function create_flying_obj(_id,_z) {
	var _head	= instance_create_depth(x,y,depth,o_flying_object)
	_head.object_id		= _id
	_head.sprite_index	= _head.sprite_i[_id][_head.i_angle div 45][0]
	_head.z				= _z
}

function line_shadow(x1,y1,x2,y2,dir,w = 4) {
	draw_set_color(#4C3D2D)
	draw_set_alpha(.3)
	if (abs(((cam_angle+dir*90) % 360)-45) < 4) || abs(((cam_angle+dir*90) % 360)-315) < 4 {
		var _xoff		= lengthdir_x(0,dir*90+90),
		var _yoff		= lengthdir_y(0,dir*90+90),
		draw_line_width(x1+_xoff,y1+_yoff,x2+_xoff,y2+_yoff,6)
	}
	draw_set_alpha(1)
}
