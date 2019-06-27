tests - context inspector
testContextChangedAfterStepIn 
	| dbg |
	dbg := self debugger.
	dbg session: session.
	
	self clickStepInto. "We enter the block context"
	self assert: dbg contextInspector inspectedObject == session shortStack first.
	
	self clickStepInto. "We step into the first message"
	self assert: dbg contextInspector inspectedObject == session shortStack first.
