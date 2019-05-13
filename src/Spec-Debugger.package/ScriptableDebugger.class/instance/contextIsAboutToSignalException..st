querying
contextIsAboutToSignalException: aContext
	"Returns whether aContext is about to execute a message-send of selector #signal to an instance of the Exception class (or one of its subclasses)"
	| node |
	node := aContext method sourceNodeForPC: aContext pc.
	(node isMessage) ifFalse: [ ^false ].
	(node selector = #signal) ifFalse: [ ^false ].
	(aContext basicSize >= 1) ifFalse: [ ^false ].
	(Exception allSubclasses includes: (aContext at: (aContext basicSize))) ifTrue: [ ^true ]. "#signal sent to a subclass of Exception"
	(Exception allSubclasses includes: ((aContext at: (aContext basicSize)) class)) ifTrue: [ ^true ]. "#signal sent to an instance of a subclass of Exception"
	^ false
	