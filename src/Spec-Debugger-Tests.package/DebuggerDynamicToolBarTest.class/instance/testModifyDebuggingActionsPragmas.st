tests
testModifyDebuggingActionsPragmas
	toolbar debuggingActionsPragmas: { #advancedDebuggingActions }.
	self assert: toolbar debuggingActionsPragmas equals: { #advancedDebuggingActions }