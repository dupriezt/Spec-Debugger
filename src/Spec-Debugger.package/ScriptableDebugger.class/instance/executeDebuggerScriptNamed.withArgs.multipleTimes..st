debugger script
executeDebuggerScriptNamed: aSymbol withArgs: anOrderedCollection multipleTimes: anInteger
	"Executes the debugger script named aSymbol with arguments anOrderedCollection as many times as anInteger"
	anInteger timesRepeat: [ self executeDebuggerScriptNamed: aSymbol withArgs: anOrderedCollection ].