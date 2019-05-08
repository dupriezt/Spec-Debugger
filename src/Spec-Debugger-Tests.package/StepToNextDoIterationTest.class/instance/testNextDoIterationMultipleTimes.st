testing
testNextDoIterationMultipleTimes
	| node |
	self settingUpSessionAndProcessAndContextForBlock: [ self iterateOnCollection ].
	session stepInto; stepInto.
	session stepOver; stepInto.
	session stepInto; stepInto.
	"interruptedContext is the context of selector #do:"
	self assert: session interruptedContext method selector equals: #do:.
	
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (1)"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	self assert: session interruptedContext isBlockContext.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #add:.
	self assert: (session interruptedContext tempNamed: #int) equals: 1.
	
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (2)"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	self assert: session interruptedContext isBlockContext.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #add:.
	self assert: (session interruptedContext tempNamed: #int) equals: 2.
	
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (3)"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	self assert: session interruptedContext isBlockContext.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #add:.
	self assert: (session interruptedContext tempNamed: #int) equals: 3.
	