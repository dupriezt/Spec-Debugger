echo debugging
declareContext: aContext asEchoContextOf: anotherContext
	echoContexts add: { aContext. anotherContext }