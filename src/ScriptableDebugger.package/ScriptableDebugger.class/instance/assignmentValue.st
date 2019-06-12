stackAccessHelpers
assignmentValue
	"Returns the value about to be assigned, if the current node is an assignment node."
	(self currentNode isAssignment) ifFalse: [ Error signal: 'Not about to perform a assignment' ].
	^ self context at: self currentContextStackSize.