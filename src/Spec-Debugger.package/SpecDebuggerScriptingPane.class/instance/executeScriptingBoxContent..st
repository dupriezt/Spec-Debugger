as yet unclassified
executeScriptingBoxContent: aString
	OpalCompiler new
		bindings: { #dbg -> specDebuggerWrapper }	asDictionary;
		evaluate: aString.