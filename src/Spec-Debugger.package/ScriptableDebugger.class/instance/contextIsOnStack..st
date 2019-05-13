querying
contextIsOnStack: aContext
	"Returns whether aContext is somewhere on the stack"
	^ self findContextSuchThat: [ :aContexta| aContexta == aContext ] isNotNil.