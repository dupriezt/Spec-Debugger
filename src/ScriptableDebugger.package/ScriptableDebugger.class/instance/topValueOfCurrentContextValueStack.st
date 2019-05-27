contextValueStack
topValueOfCurrentContextValueStack
	"Returns the value on the top of the value stack of the current context"
	^ self at: 0 fromTheEndOfValueStackOfContext: self currentContext.