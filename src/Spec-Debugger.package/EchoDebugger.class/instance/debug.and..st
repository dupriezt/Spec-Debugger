start
debug: aBlock and: anotherBlock
	"This is the starting point of a session of echo debugging. Scriptable debuggers will be opened on the execution of these two blocks"
	scdbg1 := ScriptableDebugger2 debug: aBlock.
	scdbg2 := ScriptableDebugger2 debug: anotherBlock.
	^ self.