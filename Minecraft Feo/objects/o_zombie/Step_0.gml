event_inherited()

bol_floor	= place_meeting_3d(x,y,z+1)
if spd[HH] != 0 {
	if !place_meeting_3d(x+spd[HH],y,z) {
		x += spd[HH]
	} else spd[ZZ] = -3
}

if !bol_floor {
	spd[ZZ]	= clamp(spd[ZZ]+.5,-10,10)
	
}

repeat (abs(spd[ZZ])) {
	if z+sign(spd[ZZ]) >= 0 {
		spd[ZZ]	= 0
		break
	} else if place_meeting_3d(x,y,z+sign(spd[ZZ])) {
		spd[ZZ]	= 0
		break
	} else z	+= sign(spd[ZZ])
}
