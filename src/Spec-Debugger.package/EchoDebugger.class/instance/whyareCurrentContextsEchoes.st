echo debugging
whyareCurrentContextsEchoes
	"If the current contexts of the two executions are not echoes, returns a string explaining why"
	^ self context: scdbg1 currentContext isEchoContextOf: scdbg2 currentContext returnReason: true.