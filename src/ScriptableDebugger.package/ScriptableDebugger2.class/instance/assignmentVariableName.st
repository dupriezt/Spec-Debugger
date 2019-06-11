stackAccessHelpers
assignmentVariableName
	"Returns the variable name about to be assigned to, if the current node is an assignment node."
	(self currentNode isAssignment) ifFalse: [ Error signal: 'Not about to perform a assignment' ].
	^ self currentNode variable name.