helper
stepA1
	|i|
	i := 0.
	self halt.
	[ i = 100 ] whileFalse: [ i := i + 1 ].