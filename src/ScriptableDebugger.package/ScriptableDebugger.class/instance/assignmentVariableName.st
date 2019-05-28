querying
assignmentVariableName
	"If the currentNode is an assignment node, returns the name of the variable being assigned a value"
	(self currentNode isAssignment) ifFalse: [ Error signal: 'Not about to perform a assignment' ].
	^ self currentNode variable name.