mxprev	= mx
myprev	= my
mzprev	= mz

var _i	= change_seed_i()

mouse_in_backyard	= (in_range(mx,backyard_00[XX],backyard_11[XX]) && in_range(my,backyard_00[YY],backyard_11[YY]))
 
//Aproximar soles 
sun_amount_r	= approach(sun_amount_r,sun_amount,3)

switch (level_type) {
    case lvl_tp.normal:
		recharging_pl_seeds(_i)
		cas_position()
		resalt_row()
		resalt_seed_y(_i)
		
		switch (level_state) {
			case lvl_st.play:
				
				if mouse_check_button_pressed(mb_left) {
					if _i != -1 {
						seed_i					= _i
						plant_to_put			= instance_create_depth((mx+.5)*CEL_W,(my+.5)*CEL_W,depth,plant[seed[seed_i,sd_pl.ind],pl.obj])
						plant_to_put.z			= -mz*CEL_W
				
						plant_to_put.bol_ready	= 0
						level_state				= lvl_st.put
					} else if map[mz][# mx, my][2]	== map_tp.pl {
						var _angle_z	= map[mz][# mx, my][1].angle_z
						map[mz][# mx, my][1].angle_z	= (_angle_z-90)%360
					}
				}
		
				if mouse_check_button_pressed(mb_right)  {
					if map[mz][# mx, my][2]	== map_tp.pl {
						var _angle_z	= map[mz][# mx, my][1].angle_z
						map[mz][# mx, my][1].angle_z	= (_angle_z+90+360)%360
					}
				}
		
				if mouse_check_button_released(mb_middle) {
					if map[mz][# mx, my][2]	== map_tp.pl {
						instance_destroy(map[mz][# mx, my][1])
					}
				}
		
		        break;
			case lvl_st.put:
				if instance_exists(plant_to_put) && seed_i != -1 {

					plant_to_put.map_pos	= [mx,my,mz]
					var _cost	= seed[seed_i,sd_pl.cost]
			
					if mouse_check_button_pressed(mb_left) {
						if _i == -1 {
							if map[mz][# mx, my][2]	!= map_tp.bl && map[mz][# mx, my][2] != map_tp.pl && _cost <= sun_amount && (seed[seed_i,sd_pl.load] >= (plant[seed[seed_i,sd_pl.ind],pl.load]-.1)) && mouse_in_backyard {
								audio_play_sound(choose(snd_put_plant_00,snd_put_plant_01),1,0)
								sun_amount				-= _cost
								seed[seed_i,sd_pl.load]	= 0
								level_state				= lvl_st.play
								seed_i					= -1
								with (plant_to_put) {
								    bol_ready	= 1
									event_user(0)
								}
							}
						} else {
							level_state				= lvl_st.play
							seed_i					= -1
							if instance_exists(plant_to_put) instance_destroy(plant_to_put)
						}
					} else if mouse_check_button_released(mb_middle) {
						if map[mz][# mx, my][2]	== map_tp.pl {
							instance_destroy(map[mz][# mx, my][1])
						}
					}
					
					if keyboard_check_pressed(ord("A")) {
						if instance_exists(plant_to_put) {
							plant_to_put.angle_z	= (plant_to_put.angle_z-90+360)%360
						}
					}
					
					if keyboard_check_pressed(ord("D")) {
						if instance_exists(plant_to_put) {
							plant_to_put.angle_z	= (plant_to_put.angle_z+90+360)%360
						}
					}
			
				}
		
				if keyboard_check_pressed(vk_escape) {
					level_state				= lvl_st.play
					seed_i					= -1
					if instance_exists(plant_to_put) instance_destroy(plant_to_put)
				}
		
		        break;
		}
			
        break;
    case lvl_tp.spc:
		cas_position()
		resalt_row()
		resalt_seed_y(_i)
		
		for (var i = 0; i < seeds_max; ++i) {
			seed[i,sd_pl.x_]	= approach(seed[i,sd_pl.x_],cam_w/2 + (i-3)*40,1)
		}
		
		
		switch (level_state) {
			case lvl_st.play:
				
				//Comenzar a ubicar planta o girar ya existente
				if mouse_check_button_pressed(mb_left) {
					if _i != -1 {
						seed_i					= _i
						plant_to_put			= instance_create_depth((mx+.5)*CEL_W,(my+.5)*CEL_W,depth,plant[seed[seed_i,sd_pl.ind],pl.obj])
						plant_to_put.z			= -mz*CEL_W
				
						plant_to_put.bol_ready	= 0
						level_state				= lvl_st.put
					} else if map[mz][# mx, my][2]	== map_tp.pl {
						var _angle_z	= map[mz][# mx, my][1].angle_z
						map[mz][# mx, my][1].angle_z	= (_angle_z+90)%360
					}
				}
		
				//Girar ya existente al otro lado
				if mouse_check_button_pressed(mb_right) && map[mz][# mx, my][2]	== map_tp.pl {
						var _angle_z	= map[mz][# mx, my][1].angle_z
						map[mz][# mx, my][1].angle_z	= (_angle_z-90+360)%360
				}
				
				//Quitar planta
				if mouse_check_button_released(mb_middle) {
					if map[mz][# mx, my][2]	== map_tp.pl {
						instance_destroy(map[mz][# mx, my][1])
					}
				}
		
		        break;
				 
			case lvl_st.put:
				if instance_exists(plant_to_put) && seed_i != -1 {

					plant_to_put.map_pos	= [mx,my,mz]													//Definir posición de la planta
			
					if mouse_check_button_pressed(mb_left) {
						if _i == -1 {																		//Si has elegido una planta
							if map[mz][# mx, my][2]	!= map_tp.bl && mouse_in_backyard {						//Si no hay bloque y estás dentro del patio
								audio_play_sound(choose(snd_put_plant_00,snd_put_plant_01),1,0)				//Emitir sonido
								seeds_max--																	//Disminuir número de semillas
								if seed_i < seeds_max+1 {													//Si la posición de la semilla es menor que el número de semillas
									for (var i = min(seed_i,seeds_max); i < seeds_max; ++i) {				//Para todas las semillas desde la última sacada
										seed[i,sd_pl.ind]	= seed[i+1,sd_pl.ind]							//Reemplazar valor
										seed[i,sd_pl.cost]	= seed[i+1,sd_pl.cost]							//Reemplazar valor
										seed[i,sd_pl.load]	= seed[i+1,sd_pl.load]							//Reemplazar valor
										seed[i,sd_pl.x_]	= seed[i+1,sd_pl.x_]							//Reemplazar valor
										seed[i,sd_pl.y_]	= seed[i+1,sd_pl.y_]							//Reemplazar valor
										seed[i,sd_pl.ang]	= seed[i+1,sd_pl.ang]							//Reemplazar valor
									}
								}
								with (plant_to_put) {														//Con la planta puesta
									bol_ready	= 1															//Definirla lista
									event_user(0)															//Ejecutar evento inicial
								}
							}
						} else {																			//Pero si no has elegido una planta
							if instance_exists(plant_to_put) {												//Si existe la planta
								instance_destroy(plant_to_put)												//Destruirla
							}
						}
						seed_i					= -1														//Deseleccionar semilla
						level_state				= lvl_st.play												//Regresar estado de nivel a jugar
					} else if mouse_check_button_released(mb_middle) {										//Pero si sueltas el boton del medio del ratón
						if map[mz][# mx, my][2]	== map_tp.pl {												//Si existe una planta
							instance_destroy(map[mz][# mx, my][1])											//Destruirla
						}
					}
		
			
				}
		
				if keyboard_check_pressed(vk_escape) {
					level_state				= lvl_st.play
					seed_i					= -1
					if instance_exists(plant_to_put) instance_destroy(plant_to_put)
				}
		
		        break;
		}
		
        break;
}

//Estado


sun_fall_cad	= clamp(sun_fall_cad + .002,1,30)

help	+= clamp(keyboard_check_pressed(ord("X"))-keyboard_check_pressed(ord("Z")),0,5)
