debugging actions
stepOver: aContext
	| newContext |
	stepRecord add: (RegisteredStep new stepCommand: #stepOver; sourceAstNode: aContext sourceNodeExecuted; yourself).
	
	"Should not step more a process that is terminating, otherwise the image will get locked."
	self interruptedProcess isTerminating ifTrue: [ SteppingATerminatingProcess signal ].

	"vv original stepOver: method from DebugSession below (except the added check on triggerEvent:) vv"
	"Send the selected message in selectedContext, and regain control 
	after the invoked method returns."	
	(self isContextPostMortem: aContext) ifTrue: [^ self].
	
	newContext := interruptedProcess completeStep: aContext.
	self updateContextTo:  
		(newContext == aContext
			ifTrue: [ (self stepToFirstInterestingBytecodeIn: interruptedProcess) ]
			ifFalse: [ newContext ]).

	triggerEventOn ifTrue: [self triggerEvent: #stepOver]