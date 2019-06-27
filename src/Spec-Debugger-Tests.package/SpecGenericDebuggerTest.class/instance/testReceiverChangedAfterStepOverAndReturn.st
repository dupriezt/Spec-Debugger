tests - receiver inspector
testReceiverChangedAfterStepOverAndReturn
	| dbg currentReceiver |
	dbg := self debugger.
	dbg session: session.	
	
	self clickStepInto: 2. "getting into Number>>squared"
	currentReceiver := dbg receiverInspector inspectedObject.
	self clickStepOver: 2. "stepping over ^self * self (i.e. returning)"
	self
		deny: dbg receiverInspector inspectedObject
		equals: currentReceiver