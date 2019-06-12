tests
testTemporaryVariables

	scdbg := ScriptableDebugger2 debug: [ |a| a := 5. ].
	self assert: (scdbg context: scdbg currentContext hasTemporaryNamed: #a).
	self assert: (scdbg temporaryNamed: #a ofContext: scdbg currentContext) equals: nil.
	scdbg temporaryNamed: #a ofContext: scdbg currentContext put: 2.
	self assert: (scdbg temporaryNamed: #a ofContext: scdbg currentContext) equals: 2.
	self assert: (scdbg temporaryNamesOfContext: scdbg currentContext) equals: #(#a).
	scdbg step.
	self assert: (scdbg temporaryNamed: #a ofContext: scdbg currentContext) equals: 5.