tests
testRemoveBreakpoint
	| breakpoint |
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg step; step.
	self assert: scdbg currentNode isMessage.
	self assert: scdbg currentNode selector equals: #asInteger.
	breakpoint := scdbg setBreakpoint.
	breakpoint remove.
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	self should: [scdbg continue] raise: SteppingATerminatingProcess.