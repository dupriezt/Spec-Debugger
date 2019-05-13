stepping
stepWhileFalse: aBlock andContextOnStack: aContext
	"Steps the execution while aBlock evaluates to false AND aContext is on the stack. The loop stops if it would step while the execution's process is terminating"
	self stepWhileTrue: [ aBlock value not and: [self contextIsOnStack: aContext]].