debugger script
executeDebuggerScriptNamed: aSymbol withArgs: anOrderedCollection
	(ScriptableDebugger debuggerScripts at: aSymbol ifAbsent: [ Error signal: ('No debugger script found with name: ', aSymbol) ]) new execute: self withArgs: anOrderedCollection.