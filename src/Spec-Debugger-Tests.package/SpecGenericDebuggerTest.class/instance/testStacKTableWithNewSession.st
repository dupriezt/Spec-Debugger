tests - stack table
testStackTableWithNewSession
	self debugger session: session.
	self
		assert: self debugger stackTable items
		equals: session shortStack.
	self assert: self debugger stackTable selectedIndex equals: 1.
	self assert: self debugger stackTable selectedItem == session shortStack first