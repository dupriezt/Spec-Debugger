breakpoints
setBreakpoint
	"Sets a breakpoint on the current node, returns an object reifying the breakpoint."
	^ self setBreakpointOn: self currentNode.