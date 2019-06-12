tests
testWhenHitBreakpoint
	| breakpoint toggle |
	toggle := false.
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg step; step.
	self assert: scdbg currentNode isMessage.
	self assert: scdbg currentNode selector equals: #asInteger.
	breakpoint := scdbg setBreakpoint.
	breakpoint whenHit: [ toggle := true ].
	scdbg := ScriptableDebugger debug: [ self helperMethod19 ].
	scdbg continue.
	self assert: toggle.