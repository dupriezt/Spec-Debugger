tests
testStep
	
	| node |
	scdbg := ScriptableDebugger debug: [ self helperMethod13 ].
	scdbg step.
	node := scdbg currentNode.
	self assert: node isAssignment.
	self assert: node variable name equals: #a.
	scdbg step.
	node := scdbg currentNode.
	self assert: node isMessage.
	self assert: node selector equals: #asInteger.