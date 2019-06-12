tests
testAddStepHook
	| stepCounter stepHook |
	scdbg := ScriptableDebugger debug: [ self helperMethod11 ].
	stepCounter := 0.
	stepHook := [ stepCounter := stepCounter + 1 ].
	scdbg addStepHook: stepHook.
	scdbg step.
	self assert: stepCounter equals: 1.
	scdbg step; stepOver.
	self assert: stepCounter equals: 21.
	scdbg removeStepHook: stepHook.
	scdbg stepOver.
	self assert: stepCounter equals: 21.