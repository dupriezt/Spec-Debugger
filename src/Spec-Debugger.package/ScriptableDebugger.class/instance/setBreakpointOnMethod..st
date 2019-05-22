breakpoints
setBreakpointOnMethod: aCompiledMethod
	"Sets a breakpoint on a method"
	|b|
	b := Breakpoint new.
	b node: aCompiledMethod ast.
	b always.
	b install.
	breakpoints add: b.
	^ b.