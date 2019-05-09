testing
testIsValid
	self settingUpSessionAndProcessAndContextForBlock: [ self iterateOnCollection ].
	session stepInto; stepInto.
	self assert: (StepToNextDoIteration isValidForContext: (session interruptedContext)) not.
	session stepOver; stepInto.
	self assert: (StepToNextDoIteration isValidForContext: (session interruptedContext)) not.
	session stepInto.
	"valid when interrupted context is just about to send the #do: message to a Collection"
	self assert: (StepToNextDoIteration isValidForContext: (session interruptedContext)).
	session stepInto.
	"valid when interrupted context is a context whose selector is #do: and receiver is a Collection"
	self assert: (StepToNextDoIteration isValidForContext: (session interruptedContext)).
	session stepInto; stepInto; stepInto; stepInto.
	"valid when interrupted context is strictly above a context whose selector is #do: and receiver is a Collection"
	self assert: (StepToNextDoIteration isValidForContext: (session interruptedContext)).