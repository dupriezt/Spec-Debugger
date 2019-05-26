debugger script
executeDebuggerScriptNamed: aSymbol multipleTimes: anInteger
	"Executes the debugger script named aSymbol as many times as anInteger"
	anInteger timesRepeat: [ self executeDebuggerScriptNamed: aSymbol ].