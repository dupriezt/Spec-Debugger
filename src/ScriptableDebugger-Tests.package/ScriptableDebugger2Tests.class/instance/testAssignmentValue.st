tests
testAssignmentValue
	scdbg := ScriptableDebugger2 debug: [ |a| a := 2 ].
	self assert: (scdbg assignmentValue) equals: 2.