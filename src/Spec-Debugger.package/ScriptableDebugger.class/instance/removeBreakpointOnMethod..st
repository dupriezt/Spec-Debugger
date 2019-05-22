breakpoints
removeBreakpointOnMethod: aCompiledMethod
	"Remove all breakpoints set by this scriptable debugger on aCompiledMethod's method node (leaves breakpoints set on nodes inside aCompiledMethod)"
	| breakpointsToRemove |
	breakpointsToRemove := breakpoints select: [ :aBreakpoint | aBreakpoint node == aCompiledMethod ast ].
	breakpointsToRemove do: [:aBreakpoint | aBreakpoint remove].