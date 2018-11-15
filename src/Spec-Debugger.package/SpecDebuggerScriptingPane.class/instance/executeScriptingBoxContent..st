as yet unclassified
executeScriptingBoxContent: aString
	| class compiledMethodSelector |
	class := Object newAnonymousSubclass.
	compiledMethodSelector := class compile: 'specDebuggerScriptingDoIt: aSpecDebuggerWrapper ', (Character lf asString), (Character tab asString), aString, ' value: aSpecDebuggerWrapper.'.
	class new perform: compiledMethodSelector with: specDebuggerWrapper.