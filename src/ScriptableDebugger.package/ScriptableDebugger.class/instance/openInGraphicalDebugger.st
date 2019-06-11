graphical debugger
openInGraphicalDebugger
	| specDbg |
	specDbg := SpecDebugger openOn: debugSession withFullView: true.
	specDbg terminateDebugSessionWhenClearing: false.