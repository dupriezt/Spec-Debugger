tests - stack table
testStackTableSelectionChanged
	self debugger session: session.
	self assert: false.
	self flag: 'Code, receiver and context inspector muste be updated. Stack must not be expanded if we''re not on the last shown element'