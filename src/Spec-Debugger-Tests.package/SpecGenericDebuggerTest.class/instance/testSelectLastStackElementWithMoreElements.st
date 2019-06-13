tests - stack table
testSelectLastStackElementWithMoreElements
	| dbg stackTable |
	dbg := self debugger.
	dbg session: session.
	stackTable := dbg stackTable.
	
	self clickStepInto.
	self clickStepInto.
	stackTable items: (session stackOfSize: 1).
	
	self assert: stackTable items size equals: 1.
	self assert: stackTable items last equals: session stack first.
	stackTable selectItem: stackTable items last.

	self assert: stackTable items size equals: session stack size.
	self assert: stackTable items equals: session stack.
	
	