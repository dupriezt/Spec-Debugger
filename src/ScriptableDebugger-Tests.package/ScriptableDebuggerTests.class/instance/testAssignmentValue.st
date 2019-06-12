tests
testAssignmentValue
	
	scdbg := ScriptableDebugger debug: [ self helperMethod2 ].
	scdbg step.
	self assert: scdbg assignmentValue equals: 5.