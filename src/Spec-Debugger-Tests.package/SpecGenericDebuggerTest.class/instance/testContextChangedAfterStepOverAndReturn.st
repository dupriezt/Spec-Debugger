tests - context inspector
testContextChangedAfterStepOverAndReturn
	| dbg currentContext |
	dbg := self debugger.
	dbg session: session.	
	
	self clickStepInto: 2. "getting into Number>>squared"
	currentContext := dbg contextInspector inspectedObject.
	self clickStepOver: 2. "stepping over ^self * self (i.e. returning)"
	self
		deny: dbg contextInspector inspectedObject
		equals: currentContext