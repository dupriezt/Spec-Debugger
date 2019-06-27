tests - context inspector
testContextTempVarList
	| dbg contextItems |
	dbg := self debugger.
	dbg session: session.
	
	self clickStepInto: 5.	
	contextItems := dbg contextInspector inspectorTable roots.
	self assert: contextItems first rawValue equals: session shortStack first. "thisContext"
	self assert: contextItems second rawValue equals: 1. "stackTop"
	self assert: (contextItems detect:[:node| node key = #i]) rawValue equals: 1.
