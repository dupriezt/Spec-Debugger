tests
testStepUntil
	
	| i |
	i := 20.
	scdbg := ScriptableDebugger debug: [ [i = 0] whileFalse: [i := i - 1]].
	scdbg stepUntil: [ i = 12 ].
	self assert: i equals: 12.