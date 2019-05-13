debugger scripts
registerDebuggerScript: aBlock underName: aSymbol
	self debuggerScripts at: aSymbol put: aBlock.