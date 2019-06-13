tests - stack table
testStacKTableWithNewSession
	self debugger session: session.
	self
		assert: self debugger stackTable items
		equals: session shortStack