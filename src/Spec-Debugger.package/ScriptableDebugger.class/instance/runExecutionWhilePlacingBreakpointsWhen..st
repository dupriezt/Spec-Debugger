breakpoints
runExecutionWhilePlacingBreakpointsWhen: aBlock
	| stepHook |
	stepHook := [ aBlock value ifTrue: [ self setBreakpointOnASTNode: self currentNode ] ].
	self addStepHook: stepHook.
	self stepWhileFalse: [ self isExecutionFinished ].
	self removeStepHook: stepHook.