var _prevzwrite		= gpu_get_zwriteenable()
var _prevztest		= gpu_get_ztestenable()
var _prevalphaten	= gpu_get_alphatestenable()
var _prevalphatre	= gpu_get_alphatestref()
var _prevdepth		= gpu_get_depth()

gpu_set_zwriteenable(true)
gpu_set_ztestenable(true)
gpu_set_alphatestenable(true)
gpu_set_alphatestref(28)

gpu_set_depth(depth)
draw_3d()

gpu_set_zwriteenable(_prevzwrite)
gpu_set_ztestenable(_prevztest)
gpu_set_alphatestenable(_prevalphaten)
gpu_set_alphatestref(_prevalphatre)
gpu_set_depth(_prevdepth)