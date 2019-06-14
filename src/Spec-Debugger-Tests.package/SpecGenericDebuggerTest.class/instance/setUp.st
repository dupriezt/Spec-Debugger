running
setUp
	| context process |
	context := [ | i |
	i := 1 squared.
	i = 1
		ifTrue: [ | j |
			j := i + 1 ].
	^ 1 + i] asContext.
	process := Process
		forContext: context
		priority: Processor userInterruptPriority.
	session := DebugSession
		named: 'test session'
		on: process
		startedAt: context