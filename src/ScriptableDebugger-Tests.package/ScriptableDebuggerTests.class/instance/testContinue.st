tests
testContinue
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg step; step.
	self assert: scdbg currentNode isMessage.
	self assert: scdbg currentNode selector equals: #asInteger.
	scdbg setBreakpoint.
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg continue.
	self assert: scdbg currentNode isMessage.
	self assert: scdbg currentNode selector equals: #asInteger.