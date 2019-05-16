start
debug: aBlock and: anotherBlock
	"This is the starting point of a session of echo debugging. Scriptable debuggers will be opened on these two blocks"
	scdbg1 := ScriptableDebugger debug: aBlock.
	scdbg2 := ScriptableDebugger debug: anotherBlock.
	^ self.