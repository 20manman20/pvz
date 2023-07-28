global.game_state	=	"tutorial"
global.mode_game	=	"planta"
patio_intro			=	true

instance_create_depth(100,room_height-20,-100000000,o_dave_)
var create = instance_create_depth(100,100,depth,o_cntrl)
instance_create_depth(188,171,-10000,dado)
instance_create_depth(95,19,-10000,o_carge_bar)

with create {
	
	max_cartas[0]	= 9
	max_cartas[1]	= 9
	
	for (var p_ = 0; p_ <= 9; p_++) {
			create_array_pcart(p_,p_)
	}
	
	for (var z_ = 0; z_ <= 9; z_++) {
		create_array_zcart(z_,z_)
	}
	
}

depth				=	1000000
