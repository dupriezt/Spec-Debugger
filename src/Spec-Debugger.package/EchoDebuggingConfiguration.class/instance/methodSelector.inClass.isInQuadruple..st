testing
methodSelector: aSelector inClass: aClass isInQuadruple: aQuadruple
	^ (((aQuadruple at: 1) = aSelector) and: [ self isClass: aClass equalToOrSubclassOf: (aQuadruple at: 2)])
	or: [ 
		(((aQuadruple at: 3) = aSelector) and: [ self isClass: aClass equalToOrSubclassOf: (aQuadruple at: 4)])
		
	]