tests
testIsValid
	"StepSkip is valid on message sends"
	self settingUpSessionAndProcessAndContextForBlock: [ self incrementInstanceVariable ].
	session stepInto.
	self assert: (StepSkip isValidForDebugSession: session).
	
	"StepSkip is valid on assignments"
	self settingUpSessionAndProcessAndContextForBlock: [ instanceVariable := 1 ].
	session stepInto.
	self assert: (StepSkip isValidForDebugSession: session).
	