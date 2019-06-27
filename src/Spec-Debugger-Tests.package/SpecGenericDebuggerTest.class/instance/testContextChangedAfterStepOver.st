tests - context inspector
testContextChangedAfterStepOver
	| dbg |
	dbg := self debugger.
	dbg session: session.
	
	"We add 2 to the num temps in the context inspector, 
	for the thisContext and the stackTop nodes"
	self clickStepInto: 2.	
	self
		assert: dbg contextInspector inspectorTable roots size
		equals: dbg contextInspector inspectedObject tempNames size + 2.
		
	self clickStepOver: 3.	
	self
		assert: dbg contextInspector inspectorTable roots size
		equals: dbg contextInspector inspectedObject tempNames size + 2