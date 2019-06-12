tests
testSkipWith
	|a p|
	a := 1.
	scdbg := ScriptableDebugger debug: [ a := 2. p := Point x: 2 y: 3].
	scdbg skipWith: 3.
	self assert: a equals: 1.
	scdbg skipWith: 5.
	scdbg step.
	self assert: p equals: 5.