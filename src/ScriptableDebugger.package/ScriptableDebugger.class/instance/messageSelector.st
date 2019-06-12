stackAccessHelpers
messageSelector
	"Returns the selector of the message about to be sent, if the current node is a message node."
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	^ self currentNode selector.