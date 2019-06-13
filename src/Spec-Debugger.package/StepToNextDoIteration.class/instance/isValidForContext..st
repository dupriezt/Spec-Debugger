validity
isValidForContext: aContext
	"Returns true if there is a context for the Collection(or subclass)>>do: method under or equal to aContext"
	((self searchDoContextUnderOrEqualTo: aContext) isNotNil) ifTrue: [ ^ true ].
	"Returns true if aContext is about to send #do: to an instance of Collection (or one of its subclasses)"
	^ self contextIsAboutToSendDoToACollection: aContext.