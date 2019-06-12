tests
testMessageArguments
	
	scdbg := ScriptableDebugger debug: [ self helperMethod4 ].
	scdbg step; step.
	self assert: scdbg messageArguments isEmpty.
	scdbg stepOver.
	self assert: (scdbg messageArguments at: 1) equals: 5.
	self assert: (scdbg messageArguments at: 2) equals: 3.