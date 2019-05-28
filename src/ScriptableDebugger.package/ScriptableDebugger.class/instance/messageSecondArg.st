querying
messageSecondArg
	"If the currentNode is a message node with arguments, returns the value of its second argument"
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	(self currentNode arguments size >= 2) ifFalse: [ Error signal: 'Message about to be sent does not have a second argument' ].
	^ self currentContext at: (self valueStackSizeOfContext: self currentContext) - (self currentNode arguments size) + 2.