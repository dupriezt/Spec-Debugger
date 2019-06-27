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
	
	
	"We add 2 to the num temps in the context inspector, 
	for the thisContext and the stackTop nodes"
	self
		assert: dbg contextInspector inspectorTable roots size
		equals: dbg contextInspector inspectedObject tempNames size + 2
