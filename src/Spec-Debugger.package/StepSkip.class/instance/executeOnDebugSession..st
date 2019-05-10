execute
executeOnDebugSession: aDebugSession
	"If the top context of aDebugSession is about to send a message or perform an assignment, skip it without performing the messages send/assignment"
	debugSession := aDebugSession.
	currentContext := debugSession interruptedContext.
	currentNode := self currentNodeOfContext: debugSession interruptedContext.
	(self isValidForDebugSession: debugSession) ifFalse: [ ^false ].
	currentNode isMessage ifTrue: [
		"Pop the arguments of the message send from the context's value stack"
		currentNode arguments do: [ :arg | currentContext pop ].
		"Pop the receiver from the context's value stack"
		currentContext pop.
		"Push a nil value on the context's value stack, to simulate that the message send happened and returned nil"
		currentContext push: nil.
		"Increase the pc to go over the message send"
		currentContext pc: currentContext pc + 1.
	].
	currentNode isAssignment ifTrue: [
		"Pop the value to be assigned"
		currentContext pop.
		"Push nil on the context's value stack, to simulate that the assignment happened and had value nil"
		currentContext push: nil.
		"Increase the pc to go over the assignment"
		currentContext pc: currentContext pc + 2.
	].

	"Execute bytecodes the debugger usually executes without stopping the execution (for example popping the return value of the just executed message send if it is not used afterwards)"
	debugSession stepToFirstInterestingBytecodeIn: debugSession interruptedProcess.
	debugSession refreshAttachedDebugger.
	