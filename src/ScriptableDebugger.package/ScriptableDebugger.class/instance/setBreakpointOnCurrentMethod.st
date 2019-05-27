breakpoints
setBreakpointOnCurrentMethod
	"Set a breakpoint on the method of the current context"
	|b|
	b := Breakpoint new.
	b node: (self currentContext method ast).
	b always.
	b install.
	breakpoints add: b.
	^ b.