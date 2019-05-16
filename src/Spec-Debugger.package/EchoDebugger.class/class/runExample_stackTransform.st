example - stackTransform
runExample_stackTransform
	<script>
	| block1 block2 echodbg |
	block1 := [self transformStack_v1].
	block2 := [self transformStack_v2].
	echodbg := self debug: block1 and: block2.
	self halt.
	"Execute the following to open graphical debuggers on both executions"
	"echodbg openInGraphicalDebugger."
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	
	echodbg declareCurrentContextsAsEchoes.
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	
	echodbg declareCurrentContextsAsEchoes.
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	
	echodbg declareCurrentMethodSelectorsAsEchoes.
	
	echodbg mirrorStepUntilDivergence.
	echodbg refreshAttachedGraphicalDebugger.
	
	"Print the following to know why the current contexts of the two executions aren't echoes"
	echodbg whyareCurrentContextsEchoes.
	