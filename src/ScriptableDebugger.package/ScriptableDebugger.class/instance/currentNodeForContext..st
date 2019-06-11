querying - context property
currentNodeForContext: aContext
	"Returns the AST node aContext is about to execute"
	^ aContext method sourceNodeForPC: aContext pc.