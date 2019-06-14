tests - context inspector
testContextChangedAfterStepIn 
	| dbg |
	dbg := self debugger.
	dbg session: session.
	
	dbg stepInto. "We enter the block context"
	self assert: dbg contextInspector object equals: session shortStack first.
	
	dbg stepInto. "We step into the first message"
	self assert: dbg contextInspector object equals: session shortStack first.
