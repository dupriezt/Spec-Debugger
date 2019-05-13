actions
clear
	self removeActionsForSession: self session.
	"No more code should follow after this, as the session might terminate this process."
	terminateDebugSessionWhenClearing ifTrue: [
		self session ifNotNil: [ :aSession | aSession terminate]
	]