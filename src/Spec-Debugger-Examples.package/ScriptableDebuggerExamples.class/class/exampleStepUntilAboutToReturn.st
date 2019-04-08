example
exampleStepUntilAboutToReturn
	"# Example description: It is just a simple method call
	 # Script to execute: [dbg node isReturn] whileFalse: [ dbg stepOver ].
	 # Expected result: Debugger jumps to the ^42 node of method stepB1"
	self new stepB1