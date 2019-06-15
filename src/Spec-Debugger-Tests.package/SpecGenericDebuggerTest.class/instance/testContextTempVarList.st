tests - context inspector
testContextTempVarList
	| dbg contextItems |
	dbg := self debugger.
	dbg session: session.
	
	dbg stepInto. "We enter the block context"
	contextItems := dbg contextInspector mainList items.
	self assert:  contextItems size equals: 3.
	self assert: (contextItems at: 'thisContext') equals: session shortStack first.
	self assert: (contextItems at: 'stack top') equals: 1.
	self assert: (contextItems at: 'i') equals: 1.
