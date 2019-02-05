actions
executeAction
	"Works for executions started by DoIt (ctrl-D in a playground for example).
	1) Looks up the context stack to find the one of the OpalCompiler>>evaluate method (this opal compiler has been created from the text to be executed by the DoIt, to compile it into an executable method). The search starts with the most recent contexts and goes towards the oldest, stopping at the first context corresponding to the OpalCompiler>>evaluate method. Throws an error if no such context is found
	2) Copies this OpalCompiler (to keep its coniguration)
	3) Send #evaluate to this copy (in a forked process so as not to interfere with the process of the current debugger)
	4) Close the current debugger"
	| opalCompiler opalCompilerCopy |
	opalCompiler := (self session interruptedContext findContextSuchThat: [ :ctxt | ctxt method == (OpalCompiler >> #evaluate) ]).
	opalCompiler ifNil: [ 
		self error: 'Restart Execution could not find OpalCompiler>>evaluate context on the stack'.
		^ nil].
	opalCompilerCopy := opalCompiler receiver copy.
	[ opalCompilerCopy evaluate] fork.
	self debugger close.
