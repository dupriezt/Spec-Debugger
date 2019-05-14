echo debugging
mirrorStepOn: aScriptableDebugger
	"If my execution and that of aScriptableDebugger are not echoes of each other, do nothing.
	If they are, step my execution and that of aScriptableDebugger until our currentContexts are not echoes of each other"
	(self isEchoExecutionOf: aScriptableDebugger) ifFalse: [ ^self ].
	[ 
		[self context: self currentContext isEchoContextOf: aScriptableDebugger currentContext]
		whileTrue: [
			self step.
			aScriptableDebugger step.
		]
	] on: SteppingATerminatingProcess do: [ ^ self ].