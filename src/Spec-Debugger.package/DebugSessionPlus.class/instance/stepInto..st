debugging actions
stepInto: aContext
	stepRecord add: (RegisteredStep new stepCommand: #stepInto; sourceAstNode: aContext sourceNodeExecuted; yourself).
	^ super stepInto: aContext.