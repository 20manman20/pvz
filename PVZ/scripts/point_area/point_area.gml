function point_area(argument0, argument1, argument2, argument3, argument4, argument5) {
	var x_	=	argument0
	var y_	=	argument1
	var	x_1	=	argument2
	var	y_1	=	argument3
	var	x_2	=	argument4
	var	y_2	=	argument5

	if x_ >= min(x_1,x_2) && x_ <= max(x_1,x_2) && y_ >= min(y_1,y_2) && y_ <= max(y_1,y_2) {
		return 1
	} else {
		return 0
	}


}
