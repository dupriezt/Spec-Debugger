querying
messageReceiver
	"If the currentNode is a message node, returns the value of its receiver"
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	^ self currentContext at: (self valueStackSizeOfContext: self currentContext) - (self currentNode arguments size).