event_inherited()

spd			= [0,0,0]
bol_floor	= false

state		= z_st.idle
plant_atk	= noone
plant_stomp	= noone

degrad		= 0

sprite_ar[0]= [	[s_tombstone_1x1_00, 0, 1],		//00
				[s_tombstone_1x1_00, 1, 1],		//45
				[s_tombstone_1x1_00, 2, 1],		//90
				[s_tombstone_1x1_00, 3, 1],		//135
				[s_tombstone_1x1_00, 4, 1],		//180
				[s_tombstone_1x1_00, 5, 1],		//225
				[s_tombstone_1x1_00, 6, 1],		//270
				[s_tombstone_1x1_00, 7, 1]]		//315
				
sprite_ar[1]= [	[s_tombstone_1x1_01, 0, 1],		//00
				[s_tombstone_1x1_01, 1, 1],		//45
				[s_tombstone_1x1_01, 2, 1],		//90
				[s_tombstone_1x1_01, 3, 1],		//135
				[s_tombstone_1x1_01, 4, 1],		//180
				[s_tombstone_1x1_01, 5, 1],		//225
				[s_tombstone_1x1_01, 6, 1],		//270
				[s_tombstone_1x1_01, 7, 1]]		//315
				
sprite_ar[2]= [	[s_tombstone_1x1_02, 0, 1],		//00
				[s_tombstone_1x1_02, 1, 1],		//45
				[s_tombstone_1x1_02, 2, 1],		//90
				[s_tombstone_1x1_02, 3, 1],		//135
				[s_tombstone_1x1_02, 4, 1],		//180
				[s_tombstone_1x1_02, 5, 1],		//225
				[s_tombstone_1x1_02, 6, 1],		//270
				[s_tombstone_1x1_02, 7, 1]]		//315
				
sprite_ar[3]= [	[s_tombstone_1x1_03, 0, 1],		//00
				[s_tombstone_1x1_03, 1, 1],		//45
				[s_tombstone_1x1_03, 2, 1],		//90
				[s_tombstone_1x1_03, 3, 1],		//135
				[s_tombstone_1x1_03, 4, 1],		//180
				[s_tombstone_1x1_03, 5, 1],		//225
				[s_tombstone_1x1_03, 6, 1],		//270
				[s_tombstone_1x1_03, 7, 1]]		//315

sprite_i	= sprite_ar[degrad]
sprite_i_0	= sprite_i[_angle div 45][0]
sprite_i_1	= -1


//alarm[0]	= 60*irandom_range(4,12)
/*
event_inherited()

sprite_i	= [	[s_tombstone_1x1_00, 0, 1],		//00
				[s_tombstone_1x1_00, 1, 1],		//45
				[s_tombstone_1x1_00, 2, 1],		//90
				[s_tombstone_1x1_00, 3, 1],		//135
				[s_tombstone_1x1_00, 4, 1],		//180
				[s_tombstone_1x1_00, 5, 1],		//225
				[s_tombstone_1x1_00, 6, 1],		//270
				[s_tombstone_1x1_00, 7, 1]]		//315
//alarm[0]	= 60*irandom_range(4,12)