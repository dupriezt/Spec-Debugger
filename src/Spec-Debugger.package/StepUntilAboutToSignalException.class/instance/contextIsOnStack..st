private
contextIsOnStack: aContext
	^ (debugSession interruptedContext == aContext) or: [ debugSession interruptedContext hasSender: aContext ].