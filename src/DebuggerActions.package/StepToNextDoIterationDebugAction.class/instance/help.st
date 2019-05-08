accessing
help
	| string doContext |
	string := 'Step to the next iteration of a #do: message sent to a Collection.'.
	(StepToNextDoIteration new contextIsAboutToSendDoToACollection: self currentContext) ifTrue: [ string := string , (self helpStringCompletionForContext: self currentContext) ].
	doContext := (StepToNextDoIteration new searchDoContextUnderOrEqualTo: self currentContext).
	doContext ifNotNil: [ string := string, (self helpStringCompletionForContext: doContext sender) ].
	^ string.