tests
testSkipMessage
	instanceVariable := 0.
		"The #doNothing is there so that the message send is not the only instruction. This way this test also checks that the value stack of the context is left in a good state (i.e. has a placeholder value for the result of the message send)"
	self settingUpSessionAndProcessAndContextForBlock: [ self incrementInstanceVariable. self doNothing ].
	session stepInto.
	self assert: self currentNode isMessage.
	self assert: self currentNode selector equals: #incrementInstanceVariable.
	session stepSkip.
	self assert: self currentNode isMessage.
	self assert: self currentNode selector equals: #doNothing.
	"The value of instanceVariable is still 0, meaning the execution indeed skipped the #incrementInstanceVariable message send"
	self assert: instanceVariable equals: 0.
	