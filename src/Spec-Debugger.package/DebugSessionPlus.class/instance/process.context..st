initialization
process: aProcess context: aContext
	super process: aProcess context: aContext.
	stepRecord senderMethodAST: (aContext sender method ast). 