tests
testSelector
	
	scdbg := ScriptableDebugger debug: [ self helperMethod9 ].
	self assert: scdbg selector equals: #testSelector.
	scdbg step.
	self assert: scdbg selector equals: #helperMethod9.
	scdbg step; step.
	self assert: scdbg selector equals: #asInteger.