tests - receiver inspector
testReceiverList
	| dbg currentReceiver |
	dbg := self debugger.
	dbg session: session.	
	
	self clickStepInto: 2. "getting into Number>>squared"
	currentReceiver := dbg receiverInspector inspectedObject.	
	self assert: currentReceiver equals: 1
