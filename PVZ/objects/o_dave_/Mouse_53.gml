if	bol_talk	{
	if dialog_i	<	dialog_i_max {
		dialog_i	   +=	1
		if dialog[0,dialog_i] != "" {
			sprite_index	=	dialog[1,dialog_i]
			dave_talking	=	true
			image_speed		=	1
			alarm[0]		=	(string_length(dialog[0,dialog_i]))*1.5
		}
	} else {
		if dialog_i	==	dialog_i_max {
			dialog[0,dialog_i_max+1]	=	""
			dialog_i				       +=	1
		}
	}
}