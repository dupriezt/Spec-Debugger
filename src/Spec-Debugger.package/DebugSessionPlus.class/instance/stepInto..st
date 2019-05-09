debugging actions
stepInto: aContext
	stepRecord add: (RegisteredStep new stepCommand: #stepInto; sourceAstNode: aContext sourceNodeExecuted; yourself).
	
	"vv original stepInto: method from DebugSession below (except the added check on triggerEvent:) vv"
	"Send the selected message in selectedContext, and take control in 
	the method invoked to allow further step or send."

	(self isContextPostMortem: aContext) ifTrue: [^ self].

	interruptedProcess step: aContext.
	self updateContextTo: (self stepToFirstInterestingBytecodeIn: interruptedProcess).
	
	triggerEventOn ifTrue: [self triggerEvent: #stepInto]