stepping
completeExecution
	"Runs the execution until the process itself is about to terminate. That's as far as you can safely step an execution without freezing the image."
	[process isTerminating] whileFalse: [ self step ]