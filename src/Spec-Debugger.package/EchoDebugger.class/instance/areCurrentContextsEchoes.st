echo debugging
areCurrentContextsEchoes
	^ self context: scdbg1 currentContext isEchoContextOf: scdbg2 currentContext returnReason: false.