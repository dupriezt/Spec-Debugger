echo debugging
areCurrentContextsEchoes
	"Returns whether the current context of the two executions are echoes of each other"
	^ self context: scdbg1 currentContext isEchoContextOf: scdbg2 currentContext returnReason: false.