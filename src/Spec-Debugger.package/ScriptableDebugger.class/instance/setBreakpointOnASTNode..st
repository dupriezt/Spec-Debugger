breakpoints
setBreakpointOnASTNode: anASTNode
	"Sets a breakpoint on anASTNode"
	|b|
	b := Breakpoint new.
	b node: anASTNode.
	b always.
	b install.
	breakpoints add: b.
	^ b.