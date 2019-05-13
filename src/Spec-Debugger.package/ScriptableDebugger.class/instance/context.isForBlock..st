querying
context: aContext isForBlock: aBlock
	"Returns whether aContext is a block context for block aBlock"
	aContext isBlockContext ifFalse: [ ^ false ].
	^ aContext closure sourceNode == aBlock sourceNode.