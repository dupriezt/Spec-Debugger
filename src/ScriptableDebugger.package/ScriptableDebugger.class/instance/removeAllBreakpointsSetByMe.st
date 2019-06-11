breakpoints
removeAllBreakpointsSetByMe
	"Remove all the breakpoints set by self"
	breakpoints do: [ :breakpoint | breakpoint remove ].