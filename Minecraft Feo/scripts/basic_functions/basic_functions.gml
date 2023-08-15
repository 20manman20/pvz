function approach(_val0, _val1, amount) {
	if _val0 < _val1
		return min(amount + _val0, _val1)
	else
		return max(_val0 - amount, _val1)

}

function in_range(_val,_min,_max) {
	return ((_min <= _val) && (_val <= _max))
}

