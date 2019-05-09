testing
testNextDoIterationJustBeforeDoContextExists
	| node |
	self settingUpSessionAndProcessAndContextForBlock: [ self iterateOnCollection ].
	session stepInto; stepInto.
	session stepOver; stepInto.
	session stepInto.
	"interruptedContext is just about to send the #do: message"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #do:.
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (1)"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	self assert: session interruptedContext isBlockContext.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #add:.
	self assert: (session interruptedContext tempNamed: #int) equals: 1.
	