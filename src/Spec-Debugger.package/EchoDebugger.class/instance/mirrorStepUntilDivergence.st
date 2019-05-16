echo debugging
mirrorStepUntilDivergence
	"Step both executions until their current contexts are not echoes of each other."
	[ 
		[self areCurrentContextsEchoes] whileTrue: [ scdbg1 step. scdbg2 step ] .
	] on: SteppingATerminatingProcess do: [ ^ self ].