execute
executeOnDebugSession: aDebugSession onContext: aContext
	"If aContext has among its senders a context for the #do: method of an instance of Collection (or subclasses), step until the next time the argument block of #do: is executed (or until the #do: context is popped if it happens first)"
	debugSession := aDebugSession.
	startContext := aContext.
	(self isValidForContext: startContext) ifFalse: [ ^false ].
	
	debugSession deactivateEventTriggering.
	[
	(self contextIsAboutToSendDoToACollection: startContext) ifTrue: [ debugSession stepInto. startContext := debugSession interruptedContext ].
	doContext := self searchDoContextUnderOrEqualTo: startContext.
	doArgumentBlock := doContext arguments at: 1.
	"To complete all contexts above startContext, so that startContext coincides with the debugSession's interruptedContext"
	debugSession interruptedProcess completeTo: startContext.
	[
		"case 1: startContext is above or equal to a block context for the do:'s block"
		(self context: startContext isAboveOrEqualToBlockContextForBlock: doArgumentBlock) ifTrue: [
			self stepToContext: doContext.
			self stepToContextForBlock: doArgumentBlock.
			^ true.
		].
		"case 2: startContext is above the doContext and there is no block context for doArgumentBlock between them"
		self stepToContextForBlock: doArgumentBlock.
		^ true.
	] on: ContextNotOnStack do: [ UIManager default inform: 'Next Do Iteration: Stopped because the #do: context is no longer on the stack' ]
	] ensure: [ debugSession activateEventTriggering ]
	
	
	