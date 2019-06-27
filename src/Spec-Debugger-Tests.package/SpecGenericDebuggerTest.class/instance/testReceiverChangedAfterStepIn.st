tests - receiver inspector
testReceiverChangedAfterStepIn 
	| dbg |
	dbg := self debugger.
	dbg session: session.
	
	self clickStepInto. "We enter the block context"
	self assert: dbg receiverInspector inspectedObject == session shortStack first receiver.
	
	self clickStepInto. "We step into the first message"
	self assert: dbg receiverInspector inspectedObject == session shortStack first receiver.

