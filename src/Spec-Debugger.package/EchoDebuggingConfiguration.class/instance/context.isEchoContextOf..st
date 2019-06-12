echo debugging
context: aContext isEchoContextOf: anotherContext
	^ echoContexts anySatisfy: [ :couple | 
		(((couple at: 1) == aContext) and: [ (couple at: 2) == anotherContext ])
		or: [ 
			((couple at: 2) == aContext) and: [ (couple at: 1) == anotherContext ]
		]	
	]