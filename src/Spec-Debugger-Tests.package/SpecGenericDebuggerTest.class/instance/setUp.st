running
setUp
	| context process |
	context := [ 1 + 1 squared] asContext.
	process := Process
		forContext: context
		priority: Processor userInterruptPriority.
	session := DebugSession
		named: 'test session'
		on: process
		startedAt: context