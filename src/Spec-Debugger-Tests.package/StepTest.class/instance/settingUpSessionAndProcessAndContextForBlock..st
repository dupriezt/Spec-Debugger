as yet unclassified
settingUpSessionAndProcessAndContextForBlock: aBlock
	context := aBlock asContext.
	process := Process 
	    forContext: context 
	    priority: Processor userInterruptPriority.
	session := DebugSessionPlus named: 'test session' on: process startedAt: context