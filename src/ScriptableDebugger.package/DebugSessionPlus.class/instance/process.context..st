initialization
process: aProcess context: aContext
	super process: aProcess context: aContext.
	(aContext sender isNotNil)
		ifTrue: [ stepRecord senderMethodAST: (aContext sender method ast) ]
		"Not sure setting senderMethodAST to nil actually works"
		ifFalse: [ stepRecord senderMethodAST: (aContext sender) ]
	