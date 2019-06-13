tests - stack table
testStacKTableAfterStepIn
	|dbg stackTableItems stackSize|
	dbg := self debugger.		
	dbg session: session.
	stackSize := dbg stackTable items size.	
		
	self clickStepInto.
	self clickStepInto.
	
	stackTableItems := dbg stackTable items.
	self assert: stackTableItems size equals: stackSize + 1.
	self assert: stackTableItems equals: session shortStack 