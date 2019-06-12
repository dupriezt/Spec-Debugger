tests
testMessageReceiver
	
	scdbg := ScriptableDebugger debug: [ self helperMethod5 ].
	self assert: scdbg messageReceiver equals: self.
	scdbg step; step.
	self assert: scdbg messageReceiver equals: '3'.