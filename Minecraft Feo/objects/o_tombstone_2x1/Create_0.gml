event_inherited()

spd			= [0,0,0]
bol_floor	= false

state		= z_st.idle
plant_atk	= noone
plant_stomp	= noone

degrad		= 0

sprite_ar[0]= [	[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 0, 1],		//00
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 1, 1],		//45
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 2, 1],		//90
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 3, 1],		//135
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 4, 1],		//180
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 5, 1],		//225
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 6, 1],		//270
				[[s_tombstone_2x1_1_deg0,s_tombstone_2x1_0_deg012], 7, 1]]		//315
				
sprite_ar[1]= [	[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 0, 1],		//00
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 1, 1],		//45
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 2, 1],		//90
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 3, 1],		//135
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 4, 1],		//180
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 5, 1],		//225
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 6, 1],		//270
				[[s_tombstone_2x1_1_deg1,s_tombstone_2x1_0_deg012], 7, 1]]		//315
				
sprite_ar[2]= [	[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 0, 1],		//00
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 1, 1],		//45
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 2, 1],		//90
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 3, 1],		//135
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 4, 1],		//180
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 5, 1],		//225
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 6, 1],		//270
				[[s_tombstone_2x1_1_deg2,s_tombstone_2x1_0_deg012], 7, 1]]		//315
				
sprite_ar[3]= [	[[s_null,s_tombstone_2x1_0_deg3], 0, 1],		//00
				[[s_null,s_tombstone_2x1_0_deg3], 1, 1],		//45
				[[s_null,s_tombstone_2x1_0_deg3], 2, 1],		//90
				[[s_null,s_tombstone_2x1_0_deg3], 3, 1],		//135
				[[s_null,s_tombstone_2x1_0_deg3], 4, 1],		//180
				[[s_null,s_tombstone_2x1_0_deg3], 5, 1],		//225
				[[s_null,s_tombstone_2x1_0_deg3], 6, 1],		//270
				[[s_null,s_tombstone_2x1_0_deg3  ], 7, 1]]		//315

sprite_i	= sprite_ar[degrad]
sprite_i_0	= sprite_i[_angle div 45][0][0]
sprite_i_1	= sprite_i[_angle div 45][0][1]