/// @description Spawn
/*
var _tombstone_i		= -1

do {
	var _r		= irandom_range(0,tombstone_n-1)
	var _bol_unav_tombstone	= !instance_exists(tombstone[_r])
	if !_bol_unav_tombstone {
		_tombstone_i	= _r
	}
} until _tombstone_i != -1

tombstone_i	= _tombstone_i
*/
var _zombie_i	= irandom_range(0,seeds_max-1)


if zombie[_zombie_i,sd_zb.cost] > brain_amount {
	alarm[2]	= 1
} else {
	if tombstone_n > 0 {
		var _tomb_i	= -1
		do {
			_tomb_i	= irandom_range(0,tombstone_max-1)
		} until instance_exists(tombstone[_tomb_i,0])
	
		put_zombie(seed[_zombie_i,sd_zb.ind],_tomb_i)	
	}
	
	if brain_amount > 25 {
		alarm[2]	= irandom_range(45,75)
	}
}







//put_zombie(0,irandom_range(0,tombstone_n-1))
/*
if tombstone_n > 0 {
	randomize()
	do {
		var _ind	= irandom_range(0,seeds_max-1)
		var _cost	= zombie[_ind,zb.cost]
	} until (zombie[_ind,zb.cost] <= brain_amount)


	if  _cost <= brain_amount	put_zombie(_ind,irandom_range(0,tombstone_n-1))
}

/*
var _res	= 100
var _try	= 50
var _ind	= 0
var _cost	= zombie[_ind,zb.cost]

do {
	_ind	= irandom_range(0,2)
	_cost	= zombie[_ind,zb.cost]
	_res	= brain_amount-_cost
	_try--
} until (_res == 0 || _try == 0)

if _try	== 0 {
	you_can			= true
	for (var i = 2; i >= 0; --i) {
		if zombie[i,zb.cost] <= brain_amount {
			_ind	= i
			break
		}
		
	}
	
} else you_can	= false

if  _cost <= brain_amount	put_zombie(_ind,irandom_range(0,tombstone_n-1))




