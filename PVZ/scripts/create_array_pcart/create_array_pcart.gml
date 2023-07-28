function create_array_pcart(argument0, argument1) {
	var value	= argument0
	var	cart	= argument1

	/*
	planta[value,0]	= Objeto
	planta[value,1]	= Costo
	planta[value,2]	= Tipo
	planta[value,3]	= Carga
	planta[value,4]	= Carga necesaria
	planta[value,5]	= Número de sprite
	*/

	switch cart {
		case 0:
			planta[value,0]	= gr
			planta[value,1]	= 50
			planta[value,2]	= "solar"
			planta[value,3]	= 0//1

		
		break
		case 1:
			planta[value,0]	= lzg
			planta[value,1]	= 100
			planta[value,2]	= "directo"
			planta[value,3]	= 0

		
		break
		case 2:		
			planta[value,0]	= ifnt_nz
			planta[value,1]	= 50
			planta[value,2]	= "defensa"
			planta[value,3]	= 0 //10

		
		break
		case 3:
			planta[value,0]	= ptp
			planta[value,1]	= 25
			planta[value,2]	= "explosivo"
			planta[value,3]	= 0 //


		break
		case 4:
			planta[value,0]	= col
			planta[value,1]	= 100
			planta[value,2]	= "pulta"
			planta[value,3]	= 0

		
		break
		case 5:
			planta[value,0]	= brs
			planta[value,1]	= 125
			planta[value,2]	= "solar"
			planta[value,3]	= 0
	
		break
		case 6:
			planta[value,0]	= rpt
			planta[value,1]	= 200
			planta[value,2]	= "directo"
			planta[value,3]	= 0//1

		
		break
		case 7:
			planta[value,0]	= bnk_ch
			planta[value,1]	= 150
			planta[value,2]	= "golpe"
			planta[value,3]	= 0//1

	
		break
		case 8:
			planta[value,0]	= bmr
			planta[value,1]	= 175
			planta[value,2]	= "punzante"
			planta[value,3]	= 0//

		
		break
		case 9:
			planta[value,0]	= icebrg
			planta[value,1]	= 0
			planta[value,2]	= "hielo"
			planta[value,3]	= 0
		
		break
		case 10:
			planta[value,0]	= lnz_mz
			planta[value,1]	= 0
			planta[value,2]	= "pulta"
			planta[value,3]	= 0
		
		break
		case 11:
			planta[value,0]	= bc_drgn
			planta[value,1]	= 0
			planta[value,2]	= "fuego"
			planta[value,3]	= 0
		
		break
		case 12:
			planta[value,0]	= trpdr
			planta[value,1]	= 0
			planta[value,2]	= "explosivo"
			planta[value,3]	= 0
		
		break
		case 13:
			planta[value,0]	= jnc
			planta[value,1]	= 0
			planta[value,2]	= "fuego"
			planta[value,3]	= 0
		
		break
		case 14:
			planta[value,0]	= ctus
			planta[value,1]	= 0
			planta[value,2]	= "punzante"
			planta[value,3]	= 0//2
		
		break
	}

	planta[value,4]	= planta[value,3]
	planta[value,5]	= cart


}
