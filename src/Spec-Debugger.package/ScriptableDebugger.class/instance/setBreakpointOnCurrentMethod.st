breakpoints
setBreakpointOnCurrentMethod
	|b|
	b := Breakpoint new.
	b node: (self currentContext method ast).
	b always.
	b install.
	breakpoints add: b.
	^ b.