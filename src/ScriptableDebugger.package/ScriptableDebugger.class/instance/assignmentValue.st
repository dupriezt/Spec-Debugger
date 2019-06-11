querying
assignmentValue
	"If the currentNode is an assignment node, returns the value of being assigned"
	(self currentNode isAssignment) ifFalse: [ Error signal: 'Not about to perform a assignment' ].
	^ self currentContext at: (self valueStackSizeOfContext: self currentContext).