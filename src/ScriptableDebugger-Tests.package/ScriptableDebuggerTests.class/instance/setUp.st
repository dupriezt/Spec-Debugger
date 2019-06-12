running
setUp
	"Hooks that subclasses may override to define the fixture of test."
	breakpointsBeforeTest := VirtualBreakpoint all.
	VirtualBreakpoint all removeAll.