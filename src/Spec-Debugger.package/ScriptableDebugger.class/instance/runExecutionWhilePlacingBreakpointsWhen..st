breakpoints
runExecutionWhilePlacingBreakpointsWhen: aBlock
	"Steps the execution until the end. After each step, evaluate aBlock. If true, sets a virtual breakpoint on the current node. After the execution is finished, commits all virtual breakpoints"
	| stepHook |
	stepHook := [ aBlock value ifTrue: [ self setVBreakpoint ] ].
	self addStepHook: stepHook.
	self stepWhileFalse: [ self isExecutionFinished ].
	self removeStepHook: stepHook.
	self commitVBreakpoints.