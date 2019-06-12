querying
currentNode
	"Returns the AST node about to be executed by the top context of the execution"
	^ self currentNodeForContext: self currentContext.