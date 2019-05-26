debugger script
executeDebuggerScriptNamed: aSymbol
	"Executes the debugger script named aSymbol."
	(ScriptableDebugger debuggerScripts at: aSymbol ifAbsent: [ Error signal: ('No debugger script found with name: ', aSymbol) ]) new execute: self.