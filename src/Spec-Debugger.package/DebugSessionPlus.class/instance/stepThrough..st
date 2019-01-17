debugging actions
stepThrough: aContext
	stepRecord add: (RegisteredStep new stepCommand: #stepThrough; sourceAstNode: aContext sourceNodeExecuted; yourself).
	^ super stepThrough: aContext.