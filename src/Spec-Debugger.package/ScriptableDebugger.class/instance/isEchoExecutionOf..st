echo debugging
isEchoExecutionOf: aScriptableDebugger
	"An execution is an echo of another if:
	- their context stack have the same size and:
	- the contexts of their stacks are echoes of each other two by two"
	^ self isEchoExecutionOf: aScriptableDebugger returnReason: false