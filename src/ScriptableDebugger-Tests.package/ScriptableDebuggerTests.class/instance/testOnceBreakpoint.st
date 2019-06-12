tests
testOnceBreakpoint
	| breakpoint |
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg step; step.
	self assert: scdbg currentNode isMessage.
	self assert: scdbg currentNode selector equals: #asInteger.
	breakpoint := scdbg setBreakpoint.
	breakpoint once.
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg continue.
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	self should: [ scdbg continue ] raise: SteppingATerminatingProcess.