updating actions
updateStepOver

	recordSteps ifTrue: [ self class StepSequence add: #over ].
	self updateStep 
	