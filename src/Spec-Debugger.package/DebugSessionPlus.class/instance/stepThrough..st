debugging actions
stepThrough: aContext
	stepRecord add: (RegisteredStep new stepCommand: #stepThrough; sourceAstNode: aContext sourceNodeExecuted; yourself).
	
	"vv original stepThrough: method from DebugSession below (except the added check on triggerEvent:) vv"
	"Send messages until you return to selectedContext.
	 Used to step into a block in the method."
	
	(self isContextPostMortem: aContext) ifTrue: [^ self].
	
	interruptedProcess stepToHome: aContext.
	self updateContextTo: (self stepToFirstInterestingBytecodeIn: interruptedProcess).
			
	triggerEventOn ifTrue: [self triggerEvent: #stepThrough]