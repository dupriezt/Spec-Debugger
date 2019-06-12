stackAccessHelpers
messageArguments
	"Returns the arguments of the message about to be sent, if the current node is a message node."
	| argumentNumber arguments i |
	(self currentNode isMessage) ifFalse: [ Error signal: 'Not about to send a message' ].
	argumentNumber := self currentNode arguments size.
	arguments := OrderedCollection new.
	i := 0.
	[i = argumentNumber] whileFalse: [ 
		arguments add: (self context at: self currentContextStackSize - argumentNumber + i + 1).
		i := i + 1.
	].
	^ arguments.