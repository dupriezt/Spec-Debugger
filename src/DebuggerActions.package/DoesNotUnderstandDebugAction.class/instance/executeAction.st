actions
executeAction
	"Should only be called when the debugger was created in response to a
	MessageNotUnderstood exception. Create a stub for the method that was
	missing and proceed into it, or create a class if it was missing instead"
	
	| msg msgCategory chosenClass |
	
	msg := self interruptedContext tempAt: 1.
	(msg lookupClass == UndefinedObject ) ifTrue: [ 
		self createMissingClassIn: self interruptedContext ].
	
	chosenClass := self 
		askForSuperclassOf: self interruptedContext receiver class
		toImplement: msg selector
		ifCancel: [^self].
	msgCategory := (self askForCategoryIn: chosenClass default: 'as yet unclassified').
	self  session
		implement: msg 
		classified: msgCategory 
		inClass: chosenClass 
		forContext: self interruptedContext.
	self debugger selectTopContext