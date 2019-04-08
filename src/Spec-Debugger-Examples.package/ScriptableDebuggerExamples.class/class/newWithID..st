helper
newWithID: anInt
	| res |
	res := self new.
	res id: anInt.
	^ res