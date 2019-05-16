dustbin
isEchoExecutionOf: aScriptableDebugger returnReason: aBoolean
	| selfStack foreignStack |
	selfStack := self currentContext stack.
	foreignStack := aScriptableDebugger currentContext stack.
	"False if both stacks are not of the same size"
	(selfStack size = foreignStack size) ifFalse: [ 
			^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Different stack size' firstObject: selfStack size secondObject: foreignStack size) ].
	"Walks both stacks simultaneously, returns false if it finds two contexts that are not echoes of each other"
	selfStack with: foreignStack do: [ :selfContext :foreignContext | (self context: selfContext isEchoContextOf: foreignContext) ifFalse: [ 
			^ self returnReason: aBoolean boolean: false reason: (self context: selfContext isEchoContextOf: foreignContext returnReason: aBoolean) ] ].
	^ self returnReason: aBoolean boolean: true reason: 'Echo Execution'.
	