echo debugging
whyareCurrentContextsEchoes
	^ self context: scdbg1 currentContext isEchoContextOf: scdbg2 currentContext returnReason: true.