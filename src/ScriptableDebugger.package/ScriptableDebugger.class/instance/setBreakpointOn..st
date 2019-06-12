breakpoints
setBreakpointOn: target
	"Sets a breakpoint on target (a node or a compiled method), returns an object reifying the breakpoint."
	| astTarget|
	astTarget := target.
	(target isKindOf: CompiledMethod) ifTrue: [ astTarget := target ast ].
	^ VirtualBreakpoint newOnNode: astTarget setBy: self.