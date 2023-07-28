event_inherited()

var area = collision_rectangle(bbox_left-6,bbox_bottom,bbox_right+6,bbox_top,par_planta,false,true)

if freeze {
	fire = false
}

if area {
	if fire {
		if area.object_index != icebrg {
			with area instance_destroy()
		}
	}
}

image_index = fire