echo debugging
declareCurrentContextsAsEchoes
	"Manually declare that the current contexts of the two executions are echoes of each other"
	echoconf declareContext: scdbg1 currentContext asEchoContextOf: scdbg2 currentContext.