initialize
initialize
	ScriptableDebugger registerDebuggerScript: [ :aScriptableDebugger | self new execute: aScriptableDebugger ] underName: self scriptName.