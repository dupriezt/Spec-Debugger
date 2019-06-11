querying - context stack
findContextForSelector: aSymbol andClassOrSubclassOf: aClass
	"Run through the context stack from top to bottom to find a context whose selector is aSymbol and for which the class of its receiver is equal to or a subclass of aClass"
	^ self findContextSuchThat: [ :ctxt | (ctxt method selector = aSymbol) and: [ self class: ctxt receiver class isEqualOrSubclassOf: aClass  ] ]