angle	= 0
zoff	= 0

spin_dir	= choose(1,-1)
//hspeed		= spin_dir*.2

enum sun_st {
	jump,
	fall,
	fly
}
state	= sun_st.jump

zspd	= -5