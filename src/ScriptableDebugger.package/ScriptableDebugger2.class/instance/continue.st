stepping
continue
	"Steps the execution until:
	- is about to signal a Halt exception. In this case return #halt.
	- is about to signal a Break exception. In this case return #breakpoint.
	- has reached a virtual breakpoint. In this case return the virtual breakpoint."
	| signalMessageNode exceptionClassBeingSignalled stepHook |
	stepHook := [ VirtualBreakpoint all detect: [ :vbrkpt | vbrkpt hitTest: self currentNode] ifFound: [ :vbrkpt | self removeStepHook: stepHook. ^vbrkpt ]].
	self addStepHook: stepHook.
	[ self contextIsAboutToSignalException: self context ] whileFalse: [ self step ].
	signalMessageNode := self currentNode.
	exceptionClassBeingSignalled := self currentContext at: ((self valueStackSizeOfContext: self currentContext) - signalMessageNode arguments size).
	(exceptionClassBeingSignalled == Halt) ifTrue: [ 
		"Encountered a Halt (typically signalled by a 'self halt')"
		self skip.
		self removeStepHook: stepHook.
		^ #halt.
	].
	(exceptionClassBeingSignalled == Break) ifTrue: [ 
		"Encountered a Break (i.e. a breakpoint)"
		self skip.
		self removeStepHook: stepHook.
		^ #breakpoint.
	].
	