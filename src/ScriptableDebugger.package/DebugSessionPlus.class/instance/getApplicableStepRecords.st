as yet unclassified
getApplicableStepRecords
	^ self class StepRecords select: [ :stepRecord_ | stepRecord_ isApplicableOn: interruptedContext] 