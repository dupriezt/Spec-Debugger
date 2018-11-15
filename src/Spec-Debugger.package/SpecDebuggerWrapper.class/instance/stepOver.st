debugging actions
stepOver
	(specDebugger toolbar debuggingActions detect: [ :aDebugAction | aDebugAction class == StepOverDebugAction ]) executeAction