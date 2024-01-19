event_inherited()

image_index				= irandom_range(0,image_number-1)
bol_ready				= 1

map_pos[XX]					= (x-CEL_W/2)/CEL_W
map_pos[YY]					= (y-CEL_W/2)/CEL_W
map_pos[ZZ]					= -z/CEL_W

sh_texel_handle	= shader_get_uniform(sh_outline, "in_texel")

damage_cooldown	= 0

_angle			= 0

