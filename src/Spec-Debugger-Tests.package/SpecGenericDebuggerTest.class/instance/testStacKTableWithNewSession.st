tests - stack table
testStackTableWithNewSession
	self debugger session: session.
	self
		assert: self debugger stackTable items
		equals: session shortStack