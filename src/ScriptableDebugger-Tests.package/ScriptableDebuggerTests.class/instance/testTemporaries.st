tests
testTemporaries
	
	scdbg := ScriptableDebugger debug: [ self helperMethod10 ].
	self assert: scdbg temporaries size equals: 0.
	scdbg step.
	self assert: scdbg temporaries size equals: 1.
	self assert: (scdbg temporaries at: #a) equals: nil.
	scdbg step.
	self assert: scdbg temporaries size equals: 1.
	self assert: (scdbg temporaries at: #a) equals: 5.