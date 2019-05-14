echo debugging
isEchoExecutionOf: aScriptableDebugger
	| selfStack foreignStack |
	selfStack := self currentContext stack.
	foreignStack := aScriptableDebugger currentContext stack.
	"False if both stacks are not of the same size"
	(selfStack size = foreignStack size) ifFalse: [ ^ false ].
	"Walks both stacks simultaneously, returns false if it finds two contexts that are not echoes of each other"
	selfStack with: foreignStack do: [ :selfContext :foreignContext | (self context: selfContext isEchoContextOf: foreignContext) ifFalse: [ ^false ] ].
	^ true.
	