breakpoints
setVBreakpointOnMethod: aCompiledMethod
	"Sets a virtual breakpoint on aCompiledMethod"
	virtualBreakpoints add: (VirtualBreakpoint newOnNode: aCompiledMethod ast)