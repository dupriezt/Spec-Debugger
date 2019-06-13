examples
example1
	| a |
	a := OrderedCollection new.
	self halt.
	"StepInto to get on the #do: message (or further into it). Then StepToNextDoIteration"
	{ 1 . 2 . 3 } do: [ :int | a add: int. a add: int ].
	Point new.