tests - context inspector
testContextUnchangedAfterStepOver
		| dbg currentContext |
	dbg := self debugger.
	dbg session: session.	
	
	self clickStepInto: 2. "getting into Number>>squared"
	currentContext := dbg contextInspector inspectedObject.
	"stepping over one time ^self * self (i.e. we are on the return node but still in the same context)"
	self clickStepOver. 
	self assert: dbg contextInspector inspectedObject ==  currentContext