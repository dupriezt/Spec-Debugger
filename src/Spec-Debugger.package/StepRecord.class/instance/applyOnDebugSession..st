adding
applyOnDebugSession: aDebugSession
	registeredStepsList do: [ :stepSymbol | aDebugSession perform: stepSymbol ]