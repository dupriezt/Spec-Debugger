tests
testAssignmentValue
	scdbg := ScriptableDebugger debug: [ |a| a := 2 ].
	self assert: (scdbg assignmentValue) equals: 2.