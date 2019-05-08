private
context: aContext isForBlock: aBlock
	aContext isBlockContext ifFalse: [ ^ false ].
	^ aContext closure sourceNode == aBlock sourceNode.