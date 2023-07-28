if !instance_exists(o_cntrl) && !instance_exists(dave_intro) && !instance_exists(o_dave_) {
	var dave_	=	instance_create_depth(100,room_height-20,-100000000,o_dave_)
	with dave_ {
		
	}
	global.game_state	=	"tutorial"
}
