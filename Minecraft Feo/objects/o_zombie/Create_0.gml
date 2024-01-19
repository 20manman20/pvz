event_inherited()

spd			= [0,0,0]
spd_hv_max	= 0.15+Z_SPD_RANDOM_PLUS
bol_floor	= false

state		= z_st.entry
plant_atk	= noone
plant_stomp	= noone

sprite_ar[z_st.entry]	= [	[[s_zombie_e_01_0,s_zombie_e_01_1]	,	-1,1],		//0
							[[s_zombie_e_01_0,s_zombie_e_01_1]	,	-1,-1],		//45
							[[s_zombie_e_01_0,s_zombie_e_01_1]	,	-1,-1],		//90
							[[s_zombie_e_01_0,s_zombie_e_01_1]	,	-1,1],		//135
							[[s_zombie_e_00_0,s_zombie_e_00_1]	,	-1,1],		//180
							[[s_zombie_e_00_0,s_zombie_e_00_1]	,	-1,1],		//225
							[[s_zombie_e_00_0,s_zombie_e_00_1]	,	-1,1],		//270
							[[s_zombie_e_00_0,s_zombie_e_00_1]	,	-1,-1]]		//315

sprite_ar[z_st.walk]	= [	[[s_zombie_w_01_0,s_zombie_w_01_1]	,	-1,1],		//0
							[[s_zombie_w_01_0,s_zombie_w_01_1]	,	-1,-1],		//45
							[[s_zombie_w_01_0,s_zombie_w_01_1]	,	-1,-1],		//90
							[[s_zombie_w_01_0,s_zombie_w_01_1]	,	-1,1],		//135
							[[s_zombie_w_00_0,s_zombie_w_00_1]	,	-1,1],		//180
							[[s_zombie_w_00_0,s_zombie_w_00_1]	,	-1,1],		//225
							[[s_zombie_w_00_0,s_zombie_w_00_1]	,	-1,1],		//270
							[[s_zombie_w_00_0,s_zombie_w_00_1]	,	-1,-1]]		//315

sprite_ar[z_st.atk]		= [	[[s_zombie_a_01_0,s_zombie_a_01_1]	,	-1,1],		//0
							[[s_zombie_a_01_0,s_zombie_a_01_1]	,	-1,-1],		//45
							[[s_zombie_a_01_0,s_zombie_a_01_1]	,	-1,-1],		//90
							[[s_zombie_a_01_0,s_zombie_a_01_1]	,	-1,1],		//135
							[[s_zombie_a_00_0,s_zombie_a_00_1]	,	-1,1],		//180
							[[s_zombie_a_00_0,s_zombie_a_00_1]	,	-1,1],		//225
							[[s_zombie_a_00_0,s_zombie_a_00_1]	,	-1,1],		//270
							[[s_zombie_a_00_0,s_zombie_a_00_1]	,	-1,-1]]		//315

sprite_ar[z_st.tobasic]	= [	[[s_zombi_tb_01_full,s_zombi_tb_01_full]	,	-1,1],		//0
							[[s_zombi_tb_01_full,s_zombi_tb_01_full]	,	-1,-1],		//45
							[[s_zombi_tb_01_full,s_zombi_tb_01_full]	,	-1,-1],		//90
							[[s_zombi_tb_01_full,s_zombi_tb_01_full]	,	-1,1],		//135
							[[s_zombi_tb_00_full,s_zombi_tb_00_full]	,	-1,1],		//180
							[[s_zombi_tb_00_full,s_zombi_tb_00_full]	,	-1,1],		//225
							[[s_zombi_tb_00_full,s_zombi_tb_00_full]	,	-1,1],		//270
							[[s_zombi_tb_00_full,s_zombi_tb_00_full]	,	-1,-1]]		//315
							
sprite_ar[z_st.death]	= [	[[s_zombie_d_01_0,s_zombie_d_01_1]	,	-1,1],		//0
							[[s_zombie_d_01_0,s_zombie_d_01_1]	,	-1,-1],		//45
							[[s_zombie_d_01_0,s_zombie_d_01_1]	,	-1,-1],		//90
							[[s_zombie_d_01_0,s_zombie_d_01_1]	,	-1,1],		//135
							[[s_zombie_d_00_0,s_zombie_d_00_1]	,	-1,1],		//180
							[[s_zombie_d_00_0,s_zombie_d_00_1]	,	-1,1],		//225
							[[s_zombie_d_00_0,s_zombie_d_00_1]	,	-1,1],		//270
							[[s_zombie_d_00_0,s_zombie_d_00_1]	,	-1,-1]]		//315

sprite_i				= sprite_ar[state]
sprite_i_0				= sprite_i[_angle div 45][0][0]
sprite_i_1				= sprite_i[_angle div 45][0][1]

head_exists				= false

touch_turn_block		= false
