execute
executeOnDebugSession: aDebugSession onContext: aContext
	"Step until the #signal message is about to be sent to an instance of Exception (or subclasses), or until aContext is popped (whichever happens first)"
	debugSession := aDebugSession.
	startContext := aContext.
	debugSession deactivateEventTriggering.
	debugSession interruptedProcess completeTo: startContext.
	[
		[ self contextIsAboutToSignalException: (debugSession interruptedContext) ] whileFalse: [ debugSession stepInto. self signalIfStartContextNotOnStack]
	] on: ContextNotOnStack do: [ UIManager inform: 'Step Before Exception: Stopped because the start context is no longer on the stack' ].
	debugSession activateEventTriggering.