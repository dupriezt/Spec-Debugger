testing
isApplicableOn: aContext
	aContext sender method ast = senderMethodAST ifFalse: [ ^false ].
"	aContext sender method isDoIt "
	^ registeredStepsList first isApplicableOn: aContext sourceNodeExecuted.