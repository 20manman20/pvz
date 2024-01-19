/// @description Generar soles
randomize()
var _x		= random_range(backyard_00[XX]*CEL_W,backyard_11[XX]*CEL_W+CEL_W)
var _y		= random_range(backyard_00[YY]*CEL_W,backyard_11[YY]*CEL_W+CEL_W)
//*
var _sun	= instance_create_depth((floor(_x div CEL_W)+.5)*CEL_W,(floor(_y div CEL_W)+.5)*CEL_W,depth,o_sun)
_sun.state	= sun_st.fall
_sun.z		= -400

//sun_amount+=50
alarm[0]		= 60*sun_fall_cad

