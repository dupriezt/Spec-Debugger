breakpoints
setVBreakpointOnASTNode: aNode
	virtualBreakpoints add: (VirtualBreakpoint newOnNode: aNode)