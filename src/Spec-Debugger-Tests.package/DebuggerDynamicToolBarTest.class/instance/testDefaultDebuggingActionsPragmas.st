tests
testDefaultDebuggingActionsPragmas
	| debuggingActionsPragmas |
	debuggingActionsPragmas := toolbar debuggingActionsPragmas.
	self assert: debuggingActionsPragmas notEmpty.
	self assert: debuggingActionsPragmas size equals: 1.
	self assert: debuggingActionsPragmas equals: {#debuggingAction}