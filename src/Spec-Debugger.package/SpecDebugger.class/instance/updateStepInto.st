updating actions
updateStepInto

	recordSteps ifTrue: [ self class StepSequence add: #into ].
	self updateStep 