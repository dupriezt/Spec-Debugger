tests
testMethod
	
	scdbg := ScriptableDebugger debug: [ self helperMethod7 ].
	self assert: scdbg method equals: ScriptableDebuggerTests>>#testMethod.
	scdbg step.
	self assert: scdbg method equals: ScriptableDebuggerTests>>#helperMethod7.
	scdbg step; step.
	self assert: scdbg method equals: String>>#asInteger.