querying - context property
context: aContext isForBlock: aBlock
	"Returns whether aContext is a block context for aBlock"
	aContext isBlockContext ifFalse: [ ^ false ].
	^ aContext closure sourceNode == aBlock sourceNode.