tests - stack table
testSelectLastStackElementWithoutMoreElements
	| dbg stackTable startingStackSize |
	dbg := self debugger.
	dbg session: session.
	stackTable := dbg stackTable.
	startingStackSize := stackTable items size.
	stackTable selectItem: stackTable items last.
	
	self assert: stackTable items size equals: startingStackSize