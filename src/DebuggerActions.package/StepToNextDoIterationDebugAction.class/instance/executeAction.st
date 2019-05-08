actions
executeAction
	self session stepToNextDoIteration: self currentContext.

	"| latestDoContext doArgumentBlock topContext |
	latestDoContext := self latestDoContext.
	doArgumentBlock := latestDoContext arguments at: 1.
	topContext := self session interruptedContext."

	"case 3: interrupted context is a block context for the do:'s block"
	"(self atBlockContextForBlock: doArgumentBlock) ifTrue: [
		self stepUntilOutOfBlockContextForBlock: doArgumentBlock.
		self stepToDoContext.
		self stepToBlockContextForBlock: doArgumentBlock.	
		^ self
	]."
	"case 2: interrupted context is above a block context for the do:'s block"
	"(self aboveOrHigherThanBlockContextForBlock: doArgumentBlock) ifTrue: [ 
		self stepToDoContext.
		self stepToBlockContextForBlock: doArgumentBlock.
		^ self
	]."
	"case 1: else, between do: context and block context for the do:'s block"
	"self stepToBlockContextForBlock: doArgumentBlock.
	^ self"