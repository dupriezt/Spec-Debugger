stepping
stepWhileTrue: aBlock
	"Steps the execution while aBlock evaluates to false. Stops the loop if it would step while the execution's process is terminating"
	[[aBlock value] whileTrue: [ self step ]] on: SteppingATerminatingProcess do: [ ^ self. ]