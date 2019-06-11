tests
testTransformStack
	[expected isEmpty] whileFalse: [ self transformTopStack. self assert: (stack pop) equals: (expected pop) ].