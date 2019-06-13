tests - stack table
testStackTableAfterReturn
	|dbg stackTableItems stackSizeAfterStepIn|
	dbg := self debugger.		
	dbg session: session.
	
	"we dive into a method"
	self clickStepInto.
	self clickStepInto.
	
	stackSizeAfterStepIn := dbg stackTable items size.
	
	"we return from it"
	self clickStepOver.
	self clickStepOver.
	
	stackTableItems := dbg stackTable items.
	self assert: stackTableItems size equals: stackSizeAfterStepIn - 1.
	self assert: stackTableItems equals: session shortStack 
	