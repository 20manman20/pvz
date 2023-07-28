hspeed	=	0

if instance_exists(id_) && instance_exists(other) { id_.point	= other.id }

if instance_exists(id) {
	instance_destroy()
}