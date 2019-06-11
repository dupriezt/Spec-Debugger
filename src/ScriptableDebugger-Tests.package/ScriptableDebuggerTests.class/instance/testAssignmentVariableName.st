tests
testAssignmentVariableName
	scdbg := ScriptableDebugger debug: [ |a| a := 2 ].
	self assert: (scdbg assignmentVariableName) equals: #a.