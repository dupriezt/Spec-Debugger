tests
testContinue
	|a|
	scdbg := ScriptableDebugger2 debug: [ a:=0. self sendHalt. a:=1. self sendHalt. ].
	scdbg continue.
	self assert: a equals: 0.
	scdbg continue.
	self assert: a equals: 1.
	self shouldnt: [ scdbg continue ] raise: Exception.