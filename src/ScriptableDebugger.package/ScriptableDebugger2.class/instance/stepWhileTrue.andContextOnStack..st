stepping
stepWhileTrue: aBlock andContextOnStack: aContext
	"Steps the execution while aBlock evaluates to true AND aContext is on the stack. The loop stops if it would step while the execution's process is terminating"
	self stepWhileTrue: [ aBlock value and: [self contextIsOnStack: aContext]].