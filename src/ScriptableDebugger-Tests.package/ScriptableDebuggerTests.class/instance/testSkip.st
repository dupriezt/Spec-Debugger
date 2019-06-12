tests
testSkip
	|a p|
	a := 1.
	scdbg := ScriptableDebugger debug: [ a := 2. p := Point x: 2 y: 3].
	scdbg skip.
	self assert: a equals: 1.
	scdbg skip.
	scdbg step.
	self assert: p equals: nil.