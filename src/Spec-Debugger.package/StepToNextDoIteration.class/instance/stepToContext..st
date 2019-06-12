private
stepToContext: aContext
	[debugSession interruptedContext == aContext] whileFalse: [ debugSession stepInto. self signalIfDoContextNoLongerOnStack ]