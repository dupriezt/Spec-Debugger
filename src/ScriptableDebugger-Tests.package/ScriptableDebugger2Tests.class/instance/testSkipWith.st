tests
testSkipWith
	"Skips the #new message send, pushing 5 instead. Then step once to fo the assignment to 'a'. After this, 'a' should be worth 5"
	scdbg := ScriptableDebugger2 debug: [ |a| a := Point new. ].
	scdbg skipWith: 5.
	"scdbg executeDebuggerScriptNamed: #skip withArgs: { 5}."
	scdbg step.
	self assert: (scdbg context: scdbg currentContext hasTemporaryNamed: #a).
	self assert: (scdbg temporaryNamed: #a ofContext: scdbg currentContext ) equals: 5.