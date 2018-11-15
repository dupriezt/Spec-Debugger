debugging actions
stepThrough
	(specDebugger toolbar debuggingActions detect: [ :aDebugAction | aDebugAction class == StepThroughDebugAction ]) executeAction