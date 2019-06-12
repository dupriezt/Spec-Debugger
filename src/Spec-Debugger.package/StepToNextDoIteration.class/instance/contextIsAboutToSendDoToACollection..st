private
contextIsAboutToSendDoToACollection: aContext
	| currentNodeOfContext |
	"Returns true if aContext is about to send #do: to an instance of Collection (or one of its subclasses)"
	currentNodeOfContext := (aContext method sourceNodeForPC: aContext pc).
	(currentNodeOfContext isMessage) ifFalse: [^false].
	(currentNodeOfContext selector = #do:) ifFalse: [^false].
	(aContext basicSize = 0) ifTrue: [ ^false ].
	^ (Collection allSubclasses includes: (aContext at: aContext basicSize - 1) class)