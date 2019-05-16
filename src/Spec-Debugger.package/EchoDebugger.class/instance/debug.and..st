start
debug: aBlock and: anotherBlock
	scdbg1 := ScriptableDebugger debug: aBlock.
	scdbg2 := ScriptableDebugger debug: anotherBlock.
	^ self.