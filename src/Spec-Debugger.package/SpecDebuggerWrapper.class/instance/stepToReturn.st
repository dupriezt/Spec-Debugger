debugging actions
stepToReturn
	[self node isReturn] whileFalse: [ self stepOver ]