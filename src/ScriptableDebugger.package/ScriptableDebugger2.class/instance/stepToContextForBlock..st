stepping
stepToContextForBlock: aBlock
	"Runs the execution until the current context is a block context for aBlock"
	self stepWhileFalse: [ self context: (self currentContext) isForBlock: aBlock ].