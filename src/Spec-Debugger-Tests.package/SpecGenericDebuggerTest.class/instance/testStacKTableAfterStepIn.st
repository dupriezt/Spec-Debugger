tests - stack table
testStackTableAfterStepIn
	|dbg stackTableItems startingStackSize|
	dbg := self debugger.		
	dbg session: session.
	startingStackSize := dbg stackTable items size.	
		
	self clickStepInto.
	self clickStepInto.
	
	stackTableItems := dbg stackTable items.
	self assert: stackTableItems size equals: startingStackSize + 1.
	self assert: stackTableItems equals: session shortStack 