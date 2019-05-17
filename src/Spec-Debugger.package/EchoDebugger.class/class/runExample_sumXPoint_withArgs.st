example - sumXPoint
runExample_sumXPoint_withArgs
	<script>
	"WARNING: There is an error when running this example"
	| block1 block2 echodbg |
	block1 := [self sumXPoint_withArg: 3@3].
	block2 := [self sumXPoint_withArg: 4@4].
	echodbg := self debug: block1 and: block2.
	self halt.
	"Execute the following to open graphical debuggers on both executions"
	"echodbg openInGraphicalDebugger."
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	
	echodbg declareCurrentContextsAsEchoes.
	
	"SIGNALS AN EXCEPTION"
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	
	echodbg declareCurrentMethodSelectorsAsEchoes.
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	