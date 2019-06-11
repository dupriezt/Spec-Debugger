breakpoints
commitVBreakpoints
	"Sets actual breakpoints in the system at locations where this scriptable debugger has set virtual breakpoints. Empties the virtualBreakpoint collection of this scriptable debugger."
	virtualBreakpoints do: [ :vBrkpt | self setBreakpointOnASTNode: vBrkpt node ].
	virtualBreakpoints := OrderedCollection new.