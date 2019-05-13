start
debug: aBlock
	process := aBlock forkNamed: 'ScrptblDbgExec'.
	process suspend.
	debugSession := DebugSessionPlus new
		name: 'ScrptblDbgDebugSession';
		process: process context: process suspendedContext.
	debugSession deactivateEventTriggering.
	debugSession stepInto; stepInto.
	^ self