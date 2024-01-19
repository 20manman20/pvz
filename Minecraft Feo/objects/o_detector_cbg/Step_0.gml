//event_inherited()

if !(in_range(x,backyard_00[XX]*CEL_W-CEL_W,backyard_11[XX]*CEL_W+CEL_W) && in_range(y,backyard_00[YY]*CEL_W-CEL_W,backyard_11[YY]*CEL_W+64)) {
	instance_destroy()
}