debugger script
executeDebuggerScriptNamed: aSymbol
	(ScriptableDebugger debuggerScripts at: aSymbol ifAbsent: [ Error signal: ('No debugger script found with name: ', aSymbol) ]) new execute: self.