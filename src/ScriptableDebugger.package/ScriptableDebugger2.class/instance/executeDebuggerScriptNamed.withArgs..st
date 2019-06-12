debugger script
executeDebuggerScriptNamed: aSymbol withArgs: anOrderedCollection
	"Executes the debugger script named aSymbol, and giving it anOrderedCollection as argument."
	(ScriptableDebugger2 debuggerScripts at: aSymbol ifAbsent: [ Error signal: ('No debugger script found with name: ', aSymbol) ]) new execute: self withArgs: anOrderedCollection.