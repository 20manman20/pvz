health_			= 0
new_turn		= 0
new_turn_type	= 0
mask_index		= s_mask
type			= "Explode"
death_type		= 0

cas_x = floor(( x - o_cntrl.bg_x )/o_cntrl.cas_l)
cas_y = floor(( y - o_cntrl.bg_y )/o_cntrl.cas_l)

nutriente		= false

i_xscale		= image_xscale
i_yscale		= image_yscale

dir_x			= 1

eatable			= true

sh_dmg_color	= shader_get_uniform(sh_color,"v_amount")

dmg_alpha		= 0