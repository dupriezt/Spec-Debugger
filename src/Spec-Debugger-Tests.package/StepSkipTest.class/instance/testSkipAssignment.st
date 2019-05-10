tests
testSkipAssignment
	| temporaryVariable |
	temporaryVariable := 0.
	"The #doNothing is there so that the assignment is not the only instruction. This way this test also checks that the value stack of the context is left in a good state (i.e. has a placeholder value for the result of the assignment)"
	self settingUpSessionAndProcessAndContextForBlock: [ temporaryVariable := 1. self doNothing. ].
	session stepInto.
	"Checking that the execution is about to perform the assignment"
	self assert: self currentNode isAssignment.
	self assert: self currentNode variable name equals: #temporaryVariable.
	session stepSkip.
	self assert: self currentNode isMessage.
	self assert: self currentNode selector equals: #doNothing.
	"The value of temporaryVariable is still 0, meaning the execution indeed skipped the temporaryVariable:=1 assignment"
	self assert: temporaryVariable equals: 0.
	