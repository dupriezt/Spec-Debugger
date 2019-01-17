debugging actions
terminate
	self class StepRecords add: self stepRecord.
	^ super terminate.