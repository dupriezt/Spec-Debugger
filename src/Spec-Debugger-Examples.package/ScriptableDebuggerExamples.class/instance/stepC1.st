helper
stepC1
	|instanceArray|
	instanceArray := { self class newWithID: 1. self class newWithID: 2. self class newWithID: 3 }.
	self halt.
	instanceArray do: [ :inst | inst stepC2 ].