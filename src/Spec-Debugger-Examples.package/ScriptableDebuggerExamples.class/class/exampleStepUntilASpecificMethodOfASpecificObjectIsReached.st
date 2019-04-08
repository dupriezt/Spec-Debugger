example
exampleStepUntilASpecificMethodOfASpecificObjectIsReached
	"# Example description: Create 3 instances of this class, each with a different id variable to make it easy to distinguish them upon inspection. Halts. Call the stepC2 method of each of these instances.
	 # Script to execute:
|target|
target := (dbg temp: #instanceArray) at: 3.
[ (dbg self == target) and: [ (dbg method) = (ScriptableDebuggerExamples>>#stepC2) ]] whileFalse: [ dbg stepInto ]. 
	 # Expected result: The debugger jumps to when the stepC2 method is called on the third instance (the one with id=3)"
	self new stepC1.