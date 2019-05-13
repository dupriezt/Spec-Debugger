testing
isValid
	scdbg currentNode isMessage ifTrue: [ ^true ].
	scdbg currentNode isAssignment ifTrue: [ ^true ].
	^ false.