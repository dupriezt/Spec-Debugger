running
tearDown
	VirtualBreakpoint all removeAll.
	breakpointsBeforeTest do: [ :brkpt | VirtualBreakpoint all add: brkpt ].