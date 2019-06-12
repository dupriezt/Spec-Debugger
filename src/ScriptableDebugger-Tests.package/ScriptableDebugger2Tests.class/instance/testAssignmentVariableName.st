tests
testAssignmentVariableName
	scdbg := ScriptableDebugger2 debug: [ |a| a := 2 ].
	self assert: (scdbg assignmentVariableName) equals: #a.