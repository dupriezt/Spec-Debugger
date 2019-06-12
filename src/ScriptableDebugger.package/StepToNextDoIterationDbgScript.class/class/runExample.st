example
runExample
	<script>
	| scdbg |
	scdbg := ScriptableDebugger2 debug: [ self doCollectionExample ].
	self halt.
	"Execute the following to open the execution in a graphical debugger."
	"scdbg openInGraphicalDebugger."
	"Gets inside the #do: context"
	scdbg step; stepOver; step; step; step.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Gets inside the first activation of the block given as argument to the #do: message. (int = 1)"
	scdbg executeDebuggerScriptNamed: #StepToNextDoIteration.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Step a little in this block's execution, to change context"
	scdbg step; step.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Finishes the block's execution, steps until the #do: context is reached, then step to the secon activation of the block given as argument to the #do: message. (int = )"
	scdbg executeDebuggerScriptNamed: #StepToNextDoIteration.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Step to the third an final iteration of the #do:"
	scdbg executeDebuggerScriptNamed: #StepToNextDoIteration.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Finishes the third iteration. Steps to find the next one, but since there isn't any, steps until the #do: context is no longer on the stack"
	scdbg executeDebuggerScriptNamed: #StepToNextDoIteration.
	scdbg refreshAttachedGraphicalDebugger.
	
	"Does nothing because no #do: context is found on the stack"
	scdbg executeDebuggerScriptNamed: #StepToNextDoIteration.
	scdbg refreshAttachedGraphicalDebugger.