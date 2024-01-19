angle	= 0
yoff	= 0

spin_dir	= choose(1,-1)
hspeed		= spin_dir*.2

enum br_st {
	jump,
	fall,
	fly
}
state	= br_st.fall