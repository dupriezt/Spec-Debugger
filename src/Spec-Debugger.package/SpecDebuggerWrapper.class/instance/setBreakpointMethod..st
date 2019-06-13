debugging actions
setBreakpointMethod: aCompiledMethod
	| b |
	b := Breakpoint new.
	b node: (aCompiledMethod ast).
	b always.
	b install.
	^ b.
	
	