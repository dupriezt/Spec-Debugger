step hook
addStepHook: aBlock
	"Adds aBlock to the list of step hooks. Step hooks are executed after each step of the execution"
	stepHooks add: aBlock