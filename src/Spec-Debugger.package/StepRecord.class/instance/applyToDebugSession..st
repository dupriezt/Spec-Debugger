testing
applyToDebugSession: aDebugSession
	registeredStepsList do: [ :step | (step isApplicableOn: aDebugSession interruptedContext sourceNodeExecuted) ifFalse: [UIManager default inform: 'Stopped applying recorded steps because AST node does not match'  .^ false]. step applyToDebugSession: aDebugSession ]