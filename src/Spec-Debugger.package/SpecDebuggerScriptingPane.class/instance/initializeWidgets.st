initialization
initializeWidgets

	scriptingBox := TextPresenter new.
	self initializeButtons.
	
	specDebuggerWrapper := SpecDebuggerWrapper new.
	"specDebuggerWrapper gets the specDebugger through SpecDebuggerScriptingPane>>specDebugger:"
	
	scriptingBox aboutToStyle: true.
	scriptingBox beForCode.
	scriptingBox autoAccept: true.
	scriptingBox acceptBlock: [ :txt | ].
	scriptingBox text: 'dbg stepOver'.
	
	