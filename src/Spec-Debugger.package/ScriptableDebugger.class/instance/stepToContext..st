stepping
stepToContext: aContext
	"Runs the execution until aContext is the top context"
	self stepWhileFalse: [ self currentContext == aContext ].