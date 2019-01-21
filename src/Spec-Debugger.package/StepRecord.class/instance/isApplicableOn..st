testing
isApplicableOn: aContext
	registeredStepsList isEmpty ifTrue: [ ^false ].
	aContext sender method ast = senderMethodAST ifFalse: [ ^false ].
	^ registeredStepsList first isApplicableOn: aContext sourceNodeExecuted.