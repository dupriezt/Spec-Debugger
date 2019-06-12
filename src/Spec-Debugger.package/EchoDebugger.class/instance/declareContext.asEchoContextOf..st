echo debugging -private
declareContext: aContext asEchoContextOf: anotherContext
	"Force these two contexts to be see as echo contexts"
	echoconf declareContext: aContext asEchoContextOf: anotherContext.