tests - stack table
testStackTableAfterReturn
	|dbg stackTableItems stackSizeAfterStepIn|
	dbg := self debugger.		
	dbg session: session.
	
	"we dive into a method"
	self clickStepInto: 2.

	
	stackSizeAfterStepIn := dbg stackTable items size.
	
	"we return from it"
	self clickStepOver: 2.
	
	stackTableItems := dbg stackTable items.
	self assert: dbg stackTable selectedIndex equals: 1.
	self assert: dbg stackTable selectedItem == session shortStack first.
	self assert: stackTableItems size equals: stackSizeAfterStepIn - 1.
	self assert: stackTableItems equals: session shortStack 
	