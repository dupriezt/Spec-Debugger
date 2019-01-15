updating actions
updateStepThrough

	recordSteps ifTrue: [ self class StepSequence add: #through ].
	self updateStep 