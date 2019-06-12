tests
testReceiver
	
	scdbg := ScriptableDebugger debug: [ self helperMethod8 ].
	self assert: scdbg receiver equals: self.
	scdbg step.
	self assert: scdbg receiver equals: self.
	scdbg step; step.
	self assert: scdbg receiver equals: '3'.