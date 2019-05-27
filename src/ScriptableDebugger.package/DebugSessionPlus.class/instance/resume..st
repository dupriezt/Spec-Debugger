debugging actions
resume: aValue

	"vv original resume: method from DebugSession below (except the added check on triggerEvent:) vv"
	"Proceed execution of the receiver's model, starting after the expression at 
	which an interruption occurred."

	"If the user of this session does not plan to reuse it, it should call 'self clean' "

	Smalltalk okayToProceedEvenIfSpaceIsLow
		ifFalse: [ ^ self ].
	(self isContextPostMortem: self interruptedContext)
		ifTrue: [ ^ self ].
	self resumeProcessWithValue: aValue.
	triggerEventOn ifTrue: [self triggerEvent: #resume]