start
debug: aBlock
	| context |
	process := aBlock newProcess name: 'ScrptblDbgExec'.
	debugSession := DebugSessionPlus new
		name: 'ScrptblDbgDebugSession';
		process: process context: process suspendedContext.
	debugSession deactivateEventTriggering.
	debugSession stepInto; stepInto.
	^ self