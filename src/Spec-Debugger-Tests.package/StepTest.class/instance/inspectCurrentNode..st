running
inspectCurrentNode: aDebugSession
	context := aDebugSession interruptedContext.
	(context method sourceNodeForPC: context pc) inspect.