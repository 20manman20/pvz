zspd	= -1*random_range(.9,1/.9)
hspd	= 2*random_range(.9,1/.9)
alarm[0]	= 90
grav	= .3
jump	= 4

image_speed	= random_range(.9,1.1)

sprite_i[0]				= [	[s_zombie_head_00	,	-1,-1],		//0
							[s_zombie_head_00	,	-1,1],		//45
							[s_zombie_head_00	,	-1,1],		//90
							[s_zombie_head_00	,	-1,-1],		//135
							[s_zombie_head_01	,	-1,1],		//180
							[s_zombie_head_01	,	-1,-1],		//225
							[s_zombie_head_01	,	-1,-1],		//270
							[s_zombie_head_01	,	-1,1]]		//315

sprite_i[1]				= [	[s_cone_00	,	-1,-1],		//0
							[s_cone_00	,	-1,1],		//45
							[s_cone_00	,	-1,1],		//90
							[s_cone_00	,	-1,-1],		//135
							[s_cone_01	,	-1,1],		//180
							[s_cone_01	,	-1,-1],		//225
							[s_cone_01	,	-1,-1],		//270
							[s_cone_01	,	-1,1]]		//315

sprite_i[2]				= [	[s_bucket_00	,	-1,-1],		//0
							[s_bucket_00	,	-1,1],		//45
							[s_bucket_00	,	-1,1],		//90
							[s_bucket_00	,	-1,-1],		//135
							[s_bucket_01	,	-1,1],		//180
							[s_bucket_01	,	-1,-1],		//225
							[s_bucket_01	,	-1,-1],		//270
							[s_bucket_01	,	-1,1]]		//315

angle_z					= 0

i_angle	= (floor(cam_angle/45+.5)*45 - angle_z + 720) % 360
