i_max_p				=	4
i_max_z				=	4

i_p					=	0
i_z					=	0

global.game_state	=	"gameplay"

var a 
a	= i_max_p

repeat(i_max_p+1) {
	carta_p[a]	= noone
	a--
}

var e
e	= 16

repeat(17) {
	planta[e]	= false
	e--
}

var o
o	= i_max_z

repeat(i_max_z+1) {
	carta_z[o]	= noone
	o--
}

var u
u	= 16


repeat(17) {
	zombie[u]	= false
	u--
}


i_length_p	=	0
i_length_z	=	0

bg_y		=	24

p_ready			= false
z_ready			= false

image_xscale	= 0.12
image_yscale	= 0.12

create_array_p_info()
create_array_z_info()

p_info_i		= 0
z_info_i		= 0

//Texto

can_write[0]	= true
can_write[1]	= true
text_x[0]		= 140.5
text_x[1]		= room_width-141

name[0]			= ""
name[1]			= ""

window_set_caption("Zomburbia")