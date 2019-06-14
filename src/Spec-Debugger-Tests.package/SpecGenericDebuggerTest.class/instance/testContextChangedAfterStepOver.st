tests - context inspector
testContextChangedAfterStepOver 
	| dbg |
	dbg := self debugger.
	dbg session: session.
	dbg contextInspector mainList selectItem: dbg contextInspector mainList items last.
	
	self assert: dbg contextInspector mainList size = 4.
	self assert: dbg contextInspector inspector object isNil.
	
	self clickStepOver: 3.
	self assert: dbg contextInspector inspector object equals: 1.
	self assert: dbg contextInspector mainList size = 5.