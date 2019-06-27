tests - receiver inspector
testReceiverUnchangedAfterStepOver 
	| dbg currentReceiver |
	dbg := self debugger.
	dbg session: session.	
	
	self clickStepInto: 2. "getting into Number>>squared"
	currentReceiver := dbg receiverInspector inspectedObject.
	"stepping over one time ^self * self (i.e. we are on the return node but still in the same context)"
	self clickStepOver. 
	self assert: dbg receiverInspector inspectedObject ==  currentReceiver
