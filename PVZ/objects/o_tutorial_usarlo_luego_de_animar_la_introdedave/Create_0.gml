dialog_i				=	0

global.game_state		=	"intro"

var map			= " .,;-ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyzáéíóúÁÉÍÓÚ0123456789"
global.lit_font	= font_add_sprite_ext(s_lit_font,map,true,1)

dave_intro					=	instance_create_depth(100,room_height-20,-10000000,o_animated)