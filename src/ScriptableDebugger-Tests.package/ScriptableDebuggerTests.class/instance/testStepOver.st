tests
testStepOver
	
	scdbg := ScriptableDebugger debug: [ self helperMethod14 ].
	scdbg stepOver.
	self assert: scdbg currentNode isBlock.