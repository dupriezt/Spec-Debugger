debugging actions
stepInto
	(specDebugger toolbar debuggingActions detect: [ :aDebugAction | aDebugAction class == StepIntoDebugAction  ]) executeAction