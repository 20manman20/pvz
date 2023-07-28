switch death_type {
	case "zombi":
		if type = "solar"{
			var sol_		= instance_create_depth(x+2,y-2,depth, sol_z)
			var sol_		= instance_create_depth(x+6,y,depth, sol_z)					
			var sol_		= instance_create_depth(x-2,y,depth, sol_z)
			var sol_		= instance_create_depth(x-6,y,depth, sol_z)
		} else {
			var sol_		= instance_create_depth(x+3,y,depth, sol_z)
			sol_.value		= costo
			sol_.image_xscale	= 1+(.125*(costo/25))
			sol_.image_yscale	= 1+(.125*(costo/25))
		}
	break
	case "pala":
		var constant = floor(((costo/health_max)*health_)/25)
		
		/*
		constant	image_xscale
		1			1
		2			1.16
		3			1.32
		4			1.5
		5
		6
		7			
		8			2
		
		*/
		
		var sol_			= instance_create_depth(x,y,depth, sol)
		sol_.value			= constant*25
		sol_.image_xscale	= 1+(.125*(constant))
		sol_.image_yscale	= 1+(.125*(constant))
	break
}

/*
Paso 1: Costo intervalo: costo/25
Paso 2: Vida intervalo:	vida/(costo_intervalo*50
)

*/

