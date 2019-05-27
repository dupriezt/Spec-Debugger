querying
previousMethod
	"Returns the method being executed by the sender of the top context on the stack"
	^ self currentContext sender method.