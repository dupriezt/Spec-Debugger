testing
isApplicableOn: anASTNode
	registeredStepsList isEmpty ifTrue: [ ^false ].
	^ registeredStepsList first isApplicableOn: anASTNode.