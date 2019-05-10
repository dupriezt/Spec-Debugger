examples
example1
	self halt.
	"Step Before Exception will lead you to the point just before a ZeroDivide exception gets signalled"
	{ 3. 2. 0. 1. } do: [ :int | 5/int ].
	Point new.