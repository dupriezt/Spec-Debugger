as yet unclassified
executeScriptingBoxContent: aString
	specDebugger stack stopAutoUpdate.
	OpalCompiler new
		bindings: { #dbg -> specDebuggerWrapper }	asDictionary;
		evaluate: aString.
	specDebugger stack updateContentFromSession.
	specDebugger stack startAutoUpdate.
	