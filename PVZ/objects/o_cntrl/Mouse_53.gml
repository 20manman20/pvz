switch (global.game_state) {
	
	case "gameplay": 
	
	#region GamePlay
	
	switch global.state {
		case "poner": 
	
			#region Posicionar una carta
		
			var origin_x = bg_x + (cas_l * global.cas_x)
			var origin_y = bg_y + (cas_l * global.cas_y)
		
			if point_area(mouse_x,mouse_y,40,0,40+24,32) {
			
				if global.team_turn == "Planta" && global.pala > 0 global.state	= "pala"
			
			} else if point_area(mouse_x,mouse_y,room_width-40,0,room_width-40-24,32) {
			
				if global.team_turn == "Zombi" && global.mazo > 0 global.state	= "mazo"
			
			}else if point_area(mouse_x,mouse_y,40,room_height-40+3,100,room_height-40+27) {
			
				if global.team_turn == "Planta" && global.ntrientes > 0 global.state	= "nutrientes"
			
			} else if point_area(mouse_x,mouse_y,room_width-40,room_height-40+3,room_width-100,room_height-40+27) {
			
				if global.team_turn == "Zombi" && global.horda > 0 {
				
					if instance_exists(tmb) {
						with tmb {
							var val_	=	irandom_range(1,20)
							if val_ > 19	var zombie_	= zcb
							else if val_ > 14	zombie_	= zcn
							else				zombie_	= z
						
							instance_create_depth(x,y,depth-1,zombie_)
						}
					}
				
					global.horda--
					irest_horda	= 4
					alarm[3] = 1
				
				}
			
			}
			
			if global.team_turn = "Planta" {
				
				if  planta[i,1] <=  global.soles && planta[i,4] = planta[i,3] && !instance_exists(col_carta) &&
				((pos_game	== "patio" && point_area(mouse_x,mouse_y,bg_x,bg_y,bg_x+20*8,bg_y+5*20)) or
				(pos_game	== "zona_z" && point_area(mouse_x,mouse_y,bg_x+20*8,bg_y,bg_x+20*10,bg_y+5*20))) {	
					
					var x_			= 10
					var y_			= 16
					instance_create_depth(origin_x+x_,
					origin_y+y_, depth, planta[i,0]) 	
					global.soles -= planta[i,1]
					planta[i,4] = 0
							
				}
				
			} else {
		
				if zombie[i,1] <=  global.soles_z && zombie[i,4] = zombie[i,3] && !instance_exists(col_carta) && 
				((pos_game	== "patio" && point_area(mouse_x,mouse_y,bg_x,bg_y,bg_x+20*8,bg_y+5*20)) or
				(pos_game	== "zona_z" && point_area(mouse_x,mouse_y,bg_x+20*8,bg_y,bg_x+20*10,bg_y+5*20)))	{	
						 
					instance_create_depth(origin_x+10,
					origin_y+16, depth, zombie[i,0]) 
					global.soles_z -= zombie[i,1]
					zombie[i,4] = 0
					
				}
				
			}
			
			
			#endregion
		
		break
		case "pala":
	
	     		#region Eliminar una planta
		
				if instance_exists(col_carta) && global.team_turn == "Planta" &&
				(mouse_x < bg_x+cas_l*9 && mouse_x > bg_x) && (mouse_y < bg_y+cas_l*5 && mouse_y > bg_y) {
					global.pala--
					col_carta.death_type = "pala"
					instance_destroy(col_carta)
				}
			
				alarm[1] = 20
		
			#endregion

		break
		case "mazo":
	
			#region
		
				if instance_exists(col_carta) && global.team_turn == "Zombi" &&
					(mouse_x < bg_x+cas_l*9 && mouse_x > bg_x) && (mouse_y < bg_y+cas_l*5 && mouse_y > bg_y) {
						global.mazo--
						col_carta.death_type = "mazo"
						col_carta.health_-=200
					}
			
				alarm[1] = 1
		
			#endregion
	
		break
		case "nutrientes":
		
			#region Power Up de Plantas
		
			if instance_exists(col_carta) && global.team_turn == "Planta" && 
				(mouse_x < bg_x+cas_l*9 && mouse_x > bg_x) && (mouse_y < bg_y+cas_l*5 && mouse_y > bg_y) {
					if object_get_name(col_carta.object_index) == "ptp" {
						col_carta.image_index		= 0
						col_carta.image_speed		= 1
						col_carta.sprite_index		= s_ptp_x
					}
					if instance_place(x,y,par_planta) {
						with (par_planta)	{
							if global.ntrientes > 0 && global.team_turn == "Planta" {
							if !nutriente {
								nutriente		= true
								global.ntrientes--
								global.state	= "poner"
							}
						}
					}
				}
			}
		
			#endregion
		
		break
	}

	#endregion
	
	break
	
}