execute
executeOnDebugSession: aDebugSession onContext: aContext
	debugSession := aDebugSession.
	startContext := aContext.
	debugSession interruptedProcess completeTo: startContext.
	[
		[ self contextIsAboutToSignalException: (debugSession interruptedContext) ] whileFalse: [ debugSession stepInto. self signalIfStartContextNotOnStack]
	] on: ContextNotOnStack do: [ UIManager inform: 'Step Before Exception: Stopped because the start context is no longer on the stack' ]