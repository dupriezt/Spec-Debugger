debugging actions
terminate
	self stepRecord isEmpty ifFalse: [self class StepRecords add: self stepRecord].
	^ super terminate.