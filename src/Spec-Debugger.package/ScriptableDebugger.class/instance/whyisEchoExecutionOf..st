echo debugging
whyisEchoExecutionOf: aScriptableDebugger
	"If self and aScriptableDebugger are echo executions, returns 'Echo execution'.
	Otherwise, returns a string explaining why they aren't echo execution"
	| selfStack foreignStack |
	selfStack := self currentContext stack.
	foreignStack := aScriptableDebugger currentContext stack.
	"False if both stacks are not of the same size"
	(selfStack size = foreignStack size) ifFalse: [ ^ 'Different stack size' ].
	"Walks both stacks simultaneously, returns false if it finds two contexts that are not echoes of each other"
	selfStack with: foreignStack do: [ :selfContext :foreignContext | (self context: selfContext isEchoContextOf: foreignContext) ifFalse: [
			^ self whycontext: selfContext isEchoContextOf: foreignContext ] ].
	^ 'Echo execution'.
	