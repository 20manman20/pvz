function create_array_zcart(argument0, argument1) {
	var value	= argument0
	var	cart	= argument1

	switch cart {
		case 0:
			zombie[value,0]	= z
			zombie[value,1]	= 50
			zombie[value,2]	= "directo"
			zombie[value,3]	= 0
		
		
		break
		case 1:
			zombie[value,0]	= zcn
			zombie[value,1]	= 75
			zombie[value,2]	= "directo"
			zombie[value,3]	= 0 //2
		
		
		break
		case 2:		
			zombie[value,0]	= zcb
			zombie[value,1]	= 150
			zombie[value,2]	= "directo"
			zombie[value,3]	= 0 //4
		
		
		break
		case 3:
	
			zombie[value,0]	= zldr
			zombie[value,1]	= 250
			zombie[value,2]	= ""
			zombie[value,3]	= 0 //1
		

		break
		case 4:
			zombie[value,0]	= zbd
			zombie[value,1]	= 25
			zombie[value,2]	= "blindado"
			zombie[value,3]	= 0 //6
		
		
		break
		case 5:
			zombie[value,0]	= z_ra
			zombie[value,1]	= 75
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //9
		
	
		break
	
		case 6:	
			zombie[value,0]	= z_cmll
			zombie[value,1]	= 150
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //10
		
		
		break
	
		case 7:
			zombie[value,0]	= z_xplrdr
			zombie[value,1]	= 175
			zombie[value,2]	= "invocador"
			zombie[value,3]	= 0 //6
		
		
		break
	
		case 8:
			zombie[value,0]	= tmb
			zombie[value,1]	= 0
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //4
		

		break
	
		case 9:
			zombie[value,0]	= frn
			zombie[value,1]	= 225
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //3
		
		
		break
		case 10:
			zombie[value,0]	= ftb
			zombie[value,1]	= 300
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //6
	
		break
		case 11:
			zombie[value,0]	= lctr
			zombie[value,1]	= 125
			zombie[value,2]	= "normal"
			zombie[value,3]	= 6 //3
	
		break
		case 12:
			zombie[value,0]	= prtdr
			zombie[value,1]	= 350
			zombie[value,2]	= "normal"
			zombie[value,3]	= 0 //2
	
		break
		case 13:
			zombie[value,0]	= cmdrj
			zombie[value,1]	= 25
			zombie[value,2]	= "normal"
			zombie[value,3]	= 4 //3
	
		break
		case 14:
			zombie[value,0]	= glln
			zombie[value,1]	= 25
			zombie[value,2]	= "normal"
			zombie[value,3]	= 4 //3
	
		break
	}

	zombie[value,4]	= zombie[value,3]
	zombie[value,5]	=	cart


}
