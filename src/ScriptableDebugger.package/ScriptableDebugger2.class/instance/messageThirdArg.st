querying
messageThirdArg
	"If the currentNode is a message node with arguments, returns the value of its third argument"
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	(self currentNode arguments size >= 3) ifFalse: [ Error signal: 'Message about to be sent does not have a third argument' ].
	^ self currentContext at: (self valueStackSizeOfContext: self currentContext) - (self currentNode arguments size) + 3.