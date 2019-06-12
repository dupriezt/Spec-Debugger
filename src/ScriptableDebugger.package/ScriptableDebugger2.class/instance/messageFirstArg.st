querying
messageFirstArg
	"If the currentNode is a message node with arguments, returns the value of its first argument"
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	(self currentNode arguments size >= 1) ifFalse: [ Error signal: 'Message about to be sent does not have a first argument' ].
	^ self currentContext at: (self valueStackSizeOfContext: self currentContext) - (self currentNode arguments size) + 1.