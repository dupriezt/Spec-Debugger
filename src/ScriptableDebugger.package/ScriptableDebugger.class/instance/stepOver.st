stepping
stepOver
	|startContext|
	startContext := self currentContext.
	self step.
	[ (self currentContext == startContext) or: [ startContext hasSender: self currentContext ] ] whileFalse: [ self step. ].