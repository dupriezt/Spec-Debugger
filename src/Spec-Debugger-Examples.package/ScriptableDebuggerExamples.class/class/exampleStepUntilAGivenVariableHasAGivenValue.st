example
exampleStepUntilAGivenVariableHasAGivenValue
	"# Example description: A while loop incrementing the #i variable until it is worth 100.
	 # Script to execute: [ (dbg temp: #i) = 42 ] whileFalse: [ dbg stepInto ].
	 # Expected result: The debugger runs the while loop until the #i variable is worth 42. It ends up on the i=100 node"
	self new stepA1.