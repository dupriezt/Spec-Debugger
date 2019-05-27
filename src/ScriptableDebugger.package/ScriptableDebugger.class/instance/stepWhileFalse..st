stepping
stepWhileFalse: aBlock
	"Steps the execution while aBlock evaluates to false. The loop stops if it would step while the execution's process is terminating"
	self stepWhileTrue: [ aBlock value not ].