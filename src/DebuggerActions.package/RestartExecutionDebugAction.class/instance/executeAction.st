actions
executeAction
	"Works for executions started by DoIt (ctrl-D in a playground for example).
	1) Looks up the context stack to find the one of the OpalCompiler>>evaluate method (this opal compiler has been created from the text to be executed by the DoIt, to compile it into an executable method). The search starts with the most recent contexts and goes towards the oldest, stopping at the first context corresponding to the OpalCompiler>>evaluate method. Throws an error if no such context is found
	2) Copies this OpalCompiler (to keep its coniguration)
	3) Send #evaluate to this copy (in a forked process so as not to interfere with the process of the current debugger)
	4) Close the current debugger"
	| opalCompilerCopy context |
	"If the execution is from a DoIt"
	context := (self session interruptedContext findContextSuchThat: [ :ctxt | ctxt method == (OpalCompiler >> #evaluate) ]).
	context ifNotNil: [
		"The execution was indeed from a DoIt"
		opalCompilerCopy := context receiver copy.
		[ opalCompilerCopy evaluate] fork.
		self debugger close.
		^ nil.
	].

	"If the execution is from a calypso test command"
	context := (self session interruptedContext findContextSuchThat: [ :ctxt | ctxt method == (CmdCommandActivator  >> #executeCommand) and: [ ctxt receiver command class inheritsFrom: ClyTestCommand ] ]).
	context ifNotNil: [
		"The execution was indeed from a test command"
		[context receiver executeCommand] fork.
		self debugger close.
		^nil.
	].

	"If the execution is from a test debugged from TestRunner"
	context := (self session interruptedContext findContextSuchThat: [ :ctxt | ctxt method == (TestRunner  >> #debug:)]).
	context ifNotNil: [
		"The execution was indeed from a test debugged from TestRunner"
		[context receiver debug: (context tempNamed: #aTestCase)] fork.
		self debugger close.
		^nil.
	].

	"More generic way to catch test execution, in case the specialised ways above fail"
	context :=  (self session interruptedContext findContextSuchThat: [ :ctxt | ctxt method == (DefaultExecutionEnvironment  >> #runTestCase:) ]).
	context ifNotNil: [
		[context receiver runTestCase: (context tempNamed: #aTestCase copy)] fork.
		self debugger close.
		^ nil.
	].

	self error: 'The Restart Execution feature could not determine the source of the execution (DoIt or test) to restart it'.