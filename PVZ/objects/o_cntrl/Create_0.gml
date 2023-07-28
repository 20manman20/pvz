globalvar new_turn

global.turno		= 0

if global.turno != 0 {
if frac(global.turno/2) = 0 {
	global.team_turn = "Zombi"
} else {
	global.team_turn = "Planta"
}
} else {
	global.team_turn = "Planta"
}

global.state		= "poner"
global.mode_game	= "duelo"

global.cas_x		= 0
global.cas_y		= 0

global.soles		= 10000
global.soles_z		= 10000

global.ntrientes	= 300
global.horda		= 3

global.pala			= 3
global.mazo			= 1

can_imput			= true

cas_detect			= noone

col_carta			= 0

i					= 0

new_turn			= 0

if global.team_turn == "Planta" {
	pos_game			= "patio"
} else {
	pos_game			= "zona_z"
}

can_next_turn		= true //Si puede pasar de turno o no

//var bg_ = layer_create(399)
//bg		= layer_background_create(bg_, s_patio1)
bg_x		= (room_width - 200)/2
bg_y		= (room_height-100)/2//-10

cas_l		= 20

depth		= 6000 //60000

//Paredes

instance_create_depth(bg_x+cas_l*12.55,bg_y+cas_l*5	-2	,depth+2,cerca_power_z)
instance_create_depth(bg_x+cas_l*12.55,bg_y+cas_l*4	-2	,depth+2,cerca_power_z)
instance_create_depth(bg_x+cas_l*12.55,bg_y+cas_l*3	-2	,depth+2,cerca_power_z)
instance_create_depth(bg_x+cas_l*12.55,bg_y+cas_l*2	-2	,depth+2,cerca_power_z)
instance_create_depth(bg_x+cas_l*12.55,bg_y+cas_l	-2	,depth+2,cerca_power_z)


instance_create_depth(bg_x-cas_l*2.55,bg_y+cas_l*5	-2	,depth+2,cerca_power)
instance_create_depth(bg_x-cas_l*2.55,bg_y+cas_l*4	-2	,depth+2,cerca_power)
instance_create_depth(bg_x-cas_l*2.55,bg_y+cas_l*3	-2	,depth+2,cerca_power)
instance_create_depth(bg_x-cas_l*2.55,bg_y+cas_l*2	-2	,depth+2,cerca_power)
instance_create_depth(bg_x-cas_l*2.55,bg_y+cas_l	-2	,depth+2,cerca_power)

spc_p	= instance_create_depth(35+4,133-1.5,depth+1,o_spc_carts)
spc_p.index	= "Planta"
spc_z	= instance_create_depth(room_width-36-4,133-1.5,depth+1,o_spc_carts)
spc_z.index	= "Zombi"

transition	= true

var map			= " .,;-ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyzáéíóúÁÉÍÓÚ0123456789"
global.lit_font	= font_add_sprite_ext(s_lit_font,map,true,1)

//instance_create_depth(x,y,-100000000,o_health)