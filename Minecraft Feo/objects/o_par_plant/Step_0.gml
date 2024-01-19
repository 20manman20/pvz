_angle	= (floor(cam_angle/45+.5)*45 + angle_z + 720) % 360

sprite_index	= sprite_i[_angle div 45][0]

if sprite_i[_angle div 45][1] != -1 {
	image_index		= sprite_i[_angle div 45][1]
}

image_xscale	= sprite_i[_angle div 45][2]

x	= lerp(x,(map_pos[XX]+.5)*CEL_W,.4)
y	= lerp(y,(map_pos[YY]+.5)*CEL_W,.4)
z	= lerp(z,-map_pos[ZZ]*CEL_W,.7)

if hp_ <= 0 instance_destroy()

if instance_exists(o_plants_controller) {
	if !bol_ready && o_plants_controller.level_state != lvl_st.put {
		instance_destroy()
	}
}

damage_cooldown	= approach(damage_cooldown,0,1/30)

i_scale[HH]	= lerp(i_scale[HH],1,.1)
i_scale[VV]	= lerp(i_scale[VV],1,.1)