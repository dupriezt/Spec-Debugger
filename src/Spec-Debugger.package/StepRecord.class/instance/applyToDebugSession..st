testing
applyToDebugSession: aDebugSession
	registeredStepsList do: [ :step | step applyToDebugSession: aDebugSession ]