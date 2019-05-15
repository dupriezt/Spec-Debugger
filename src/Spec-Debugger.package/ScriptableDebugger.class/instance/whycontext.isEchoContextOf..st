echo debugging
whycontext: aContext isEchoContextOf: anotherContext
	"Returns why these contexts are or are not echoes of each other"
	^ self context: aContext isEchoContextOf: anotherContext returnReason: true.