tests
testBasicUse
	| node |
	self settingUpSessionAndProcessAndContextForBlock: [ self doThingsThatSignalAnException ].
	session stepInto; stepInto.
	"Reached the context of the #doThingsThatSignalAnException method"
	self assert: (session interruptedContext selector) equals: #doThingsThatSignalAnException.
	session stepUntilAboutToSignalException.
	"After doing a stepUntilAboutToSignalException, the execution is about to signal a ZeroDivide exception"
	self assert: (session interruptedContext receiver class) equals: SmallInteger.
	self assert: (session interruptedContext selector) equals: #/.
	node := (session interruptedContext method) sourceNodeForPC: (session interruptedContext pc).
	self assert: node isMessage.
	self assert: node selector equals: #signal.