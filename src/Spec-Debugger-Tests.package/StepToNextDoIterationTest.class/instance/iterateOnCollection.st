testing
iterateOnCollection
	| a |
	a := OrderedCollection new.
	{ 1 . 2 . 3 } do: [ :int | a add: int. a add: int ].
	Point new.