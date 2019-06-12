tests
testAssignmentVariableName
	
	scdbg := ScriptableDebugger debug: [ self helperMethod3 ].
	scdbg step.
	self assert: scdbg assignmentVariableName equals: #a.