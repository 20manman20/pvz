with o_dave_ {
	dialog_i		+= 1
	sprite_index	= s_dave_talk
	image_speed		= 1
	alarm[0]		= (string_length(dialog[0,dialog_i]))*1.5
	bol_talk		= true
}