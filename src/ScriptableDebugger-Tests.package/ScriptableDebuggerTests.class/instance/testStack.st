tests
testStack
	| context1 context2 storeContextBlock|
	storeContextBlock := [ :thisCtx | context2 := thisCtx ].
	scdbg := ScriptableDebugger debug: [ context1 := thisContext. self helperMethod17: storeContextBlock ].
	scdbg step.
	self assert: scdbg stack first equals: context1.
	scdbg step; stepOver.
	self assert: scdbg stack first equals: context2.
	self assert: (scdbg stack at: 2) equals: context1.