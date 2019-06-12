tests
testArguments
	| p |
	p := Point new.
	scdbg := ScriptableDebugger debug: [ self helperMethod18: 1 with: p ].
	scdbg step.
	self assert: scdbg arguments size equals: 2.
	self assert: (scdbg arguments at: 1) equals: 1.
	self assert: (scdbg arguments at: 2) equals: p.
	