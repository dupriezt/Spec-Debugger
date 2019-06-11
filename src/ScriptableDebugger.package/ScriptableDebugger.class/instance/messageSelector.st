querying
messageSelector
	"If the currentNode is a message node, returns its selector"
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	^ self currentNode selector.