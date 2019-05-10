tests
testSkipAssignment
	| temporaryVariable |
	temporaryVariable := 0.
	self settingUpSessionAndProcessAndContextForBlock: [ temporaryVariable := 1 ].
	session stepInto.
	"Checking that the execution is about to perform the assignment"
	self assert: self currentNode isAssignment.
	self assert: self currentNode variable name equals: #temporaryVariable.
	session stepSkip.
	self assert: self currentNode isBlock.
	"The value of temporaryVariable is still 0, meaning the execution indeed skipped the temporaryVariable:=1 assignment"
	self assert: temporaryVariable equals: 0.
	