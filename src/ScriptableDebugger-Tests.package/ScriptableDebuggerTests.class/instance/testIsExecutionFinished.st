tests
testIsExecutionFinished
	scdbg := ScriptableDebugger debug: [ self helperMethod16 ].
	self assert: scdbg isExecutionFinished not.
	scdbg stepOver; step; step; stepOver; step; stepOver; step.
	"Reached `self isActiveProcess` in Process>>#terminate"
	self assert: scdbg isExecutionFinished.