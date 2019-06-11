hitTest
hitTest: aNode
	"aNode is assumed to be the current node of the execution. If aNode is equal to the node on which this breakpoint has been set, evaluate all the blocks in whenHit and return true. Otherwise return false."
	(self node == aNode) ifTrue: [ self breakOnce ifTrue: [ self remove ]. whenHit do: [ :block | block value ]. ^ true ].
	^ false.