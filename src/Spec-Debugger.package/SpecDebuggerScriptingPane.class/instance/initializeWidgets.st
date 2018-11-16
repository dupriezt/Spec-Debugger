initialization
initializeWidgets

	scriptingBox := TextPresenter new.
	executeButton := self newButton.
	specDebuggerWrapper := SpecDebuggerWrapper new.
	"specDebuggerWrapper gets the specDebugger through SpecDebuggerScriptingPane>>specDebugger:"
	
	scriptingBox aboutToStyle: true.
	scriptingBox beForCode.
	scriptingBox autoAccept: true.
	scriptingBox acceptBlock: [ :txt | ].
	scriptingBox text: 'dbg stepOver'.
	executeButton
		icon: (self iconNamed: #glamorousGo);
		action: [
			self executeScriptingBoxContent: (self scriptingBox getText asString)
		].