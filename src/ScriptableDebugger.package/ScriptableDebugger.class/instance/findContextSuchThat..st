querying - context stack
findContextSuchThat: aBlock
	"Run through the context stack from top to bottom to find a context for which aBlock evaluates to true. Returns the first such context found, or nil if none are found."
	^ self currentContext findContextSuchThat: aBlock