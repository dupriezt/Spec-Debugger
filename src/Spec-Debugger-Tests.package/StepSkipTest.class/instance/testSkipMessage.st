tests
testSkipMessage
	instanceVariable := 0.
	self settingUpSessionAndProcessAndContextForBlock: [ self incrementInstanceVariable ].
	session stepInto.
	self assert: self currentNode isMessage.
	self assert: self currentNode selector equals: #incrementInstanceVariable.
	session stepSkip.
	self assert: self currentNode isBlock.
	"The value of instanceVariable is still 0, meaning the execution indeed skipped the #incrementInstanceVariable message send"
	self assert: instanceVariable equals: 0.
	