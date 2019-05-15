stepping
continue
	"Steps the execution until it is about to signal an exception. If this exception is Halt or Break (i.e. a Breakpoint), skip the exception signal."
	| signalMessageNode exceptionClassBeingSignalled |
	self stepWhileFalse: [ self contextIsAboutToSignalException: self currentContext ].
	self isExecutionFinished ifTrue: [ ^self ].
	signalMessageNode := self currentNode.
	exceptionClassBeingSignalled := self currentContext at: ((self valueStackSizeOfContext: self currentContext) - signalMessageNode arguments size).
	(exceptionClassBeingSignalled == Halt) ifTrue: [ 
		"Encountered a Halt (typically signalled by a 'self halt')"
		self skip.
	].
	(exceptionClassBeingSignalled == Break) ifTrue: [ 
		"Encountered a Break (i.e. a breakpoint)"
		self skip.
	]