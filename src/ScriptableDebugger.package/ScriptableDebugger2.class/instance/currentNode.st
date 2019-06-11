astAndAstMapping
currentNode
	"Returns the AST node about to be executed by the top context of the execution"
	^ self context method sourceNodeForPC: self context pc.