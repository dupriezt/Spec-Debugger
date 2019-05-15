echo debugging
whyisEchoExecutionOf: aScriptableDebugger
	"Returns why self and aScriptableDebugger are or are not echo executions"
	^ self isEchoExecutionOf: aScriptableDebugger returnReason: true