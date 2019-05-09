private
signalIfStartContextNotOnStack
	(self contextIsOnStack: startContext) ifFalse: [ ContextNotOnStack signal ]