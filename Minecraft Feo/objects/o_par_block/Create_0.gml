event_inherited()

drawx		= ds_list_create()
drawy		= ds_list_create()
drawdd		= ds_list_create()

image_blend	= make_color_hsv((	0									+256) mod 256			//150
							,(25									+256) mod 256			//+z
							,(255-((x/CEL_W + y/CEL_W) mod 2)*30	+256) mod 256)


image_index	= irandom_range(0,image_number-2)

alarm[0]	= 1
