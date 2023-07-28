randomize()

if i != "Especial" {
	irest-=25
	var objeto	= sol_z
	if global.team_turn = "Planta" objeto = sol
	var	obj_index	=	instance_create_depth(x+99,y+20,depth+1,objeto)
	obj_index.creation_type	=	"Dado"
	
	if irest > 0 {
		alarm[0] = 45
	}
	//alarm[0] = 10
} else {
	sprite_index	= s_dado_25
	image_speed		= 1
}