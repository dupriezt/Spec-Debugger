private
stepToContextForBlock: aBlock
	[self context: (debugSession interruptedContext ) isForBlock: aBlock] whileFalse: [ debugSession stepInto. self signalIfDoContextNoLongerOnStack. ]