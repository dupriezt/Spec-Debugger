querying - context property
context: aContext isAboutToSend: aSymbol toAnInstanceOrSubInstanceOfClass: aClass
	"Returns whether aContext is about to send a message of selector aSymbol to an object that is an instance of aClass, or an instance of one of its subclasses"
	| currentNode argumentNb receiverClass |
	currentNode := self currentNodeForContext: aContext.
	(currentNode isMessage) ifFalse: [ ^false ].
	(currentNode selector = aSymbol) ifFalse: [ ^false ].
	argumentNb := (currentNode arguments size).
	receiverClass := (self at: argumentNb fromTheEndOfValueStackOfContext: aContext) class.
	(receiverClass = aClass) ifTrue: [ ^true ].
	(aClass allSubclasses includes: receiverClass) ifTrue: [ ^true ].
	^ false.