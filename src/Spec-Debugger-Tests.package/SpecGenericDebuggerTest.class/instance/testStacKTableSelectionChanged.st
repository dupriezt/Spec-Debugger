tests - stack table
testStackTableSelectionChanged
	|dbg|
	dbg := self debugger.
	dbg session: session.
	self clickStepInto: 2.
	dbg stackTable selectItem: dbg stackTable items second.
	self assert: dbg contextInspector inspectedObject == dbg stackTable selectedItem.
	self assert: dbg receiverInspector inspectedObject == dbg stackTable selectedItem receiver.