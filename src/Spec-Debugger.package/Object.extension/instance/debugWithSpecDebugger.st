*Spec-Debugger
debugWithSpecDebugger
	| context process debugSession |
	context := thisContext.
	process := Processor activeProcess.
	debugSession := process newDebugSessionNamed: 'SpecDebugger' startedAt: context.
	debugSession isAboutUIProcess ifTrue: [ 
		DefaultExecutionEnvironment beActiveDuring: [UIManager default spawnNewProcess]].
	WorldState defer: [
		[
			debugSession stepOver.
			debugSession stepOver.
			SpecDebugger openOn: debugSession withFullView: false
		] on: Error do: [ :ex | 	debugSession signalDebuggerError: ex]
	].
	
	process suspend.