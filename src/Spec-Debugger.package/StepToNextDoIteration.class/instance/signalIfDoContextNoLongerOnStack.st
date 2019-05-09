signalling
signalIfDoContextNoLongerOnStack
	(debugSession interruptedContext == doContext) ifTrue: [ ^true ].
	(debugSession interruptedContext hasSender: doContext) ifTrue: [ ^true ].
	"This point is reached if doContext is not on the stack of the debugged execution"
	ContextNotOnStack signal.
	