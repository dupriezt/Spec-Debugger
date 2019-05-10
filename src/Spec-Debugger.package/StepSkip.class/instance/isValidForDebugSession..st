private
isValidForDebugSession: aDebugSession
	currentNode := self currentNodeOfContext: aDebugSession interruptedContext.
	currentNode isMessage ifTrue: [ ^true ].
	currentNode isAssignment ifTrue: [ ^true ].
	^ false.