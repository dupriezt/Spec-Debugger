testing
testNextDoIterationOnLastDoIteration
	| node |
	self settingUpSessionAndProcessAndContextForBlock: [ self iterateOnCollection ].
	session stepInto; stepInto.
	session stepOver; stepInto.
	session stepInto; stepInto.
	"interruptedContext is the context of selector #do:"
	self assert: session interruptedContext method selector equals: #do:.
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (1)"
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (2)"
	session stepToNextDoIteration.
	"interruptedContext is now a block context for the do:'s block, valued for the first element of the collection (3)"
	session stepToNextDoIteration.
	"the last iteration of the do: was reached. One more stepToNextDoIteration brings the execution to the 'Point new' node of method iterateOnCollection, after the node for the #do: send"
	self assert: session interruptedContext method equals: self class >>#iterateOnCollection.
	self assert: session interruptedContext isBlockContext not.
	node := self class >>#iterateOnCollection sourceNodeForPC: session interruptedContext pc.
	self assert: node isMessage.
	self assert: node selector equals: #new.
	