contextValueStack
at: anInteger fromTheEndOfValueStackOfContext: aContext
	"Returns the value at index <size of the value stack of aContext> - anInteger of the value stack of aContext"
	^ aContext at: ((self valueStackSizeOfContext: aContext) - anInteger).