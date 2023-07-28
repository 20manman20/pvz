if instance_exists(other) {
	if other.cas_y = id_.cas_y {
		if can_damage {
				other.health_-= damage_
				other.freeze		=	4
				other.freeze_type	=	"butter"
		}
		can_damage = false


		if destroy {
			instance_destroy() 
		}
	}
}	