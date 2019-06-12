stepping
stepOver
	|startContext|
	startContext := self context.
	self step.
	[ (self context == startContext) or: [ startContext hasSender: self context ] ] whileFalse: [ self step. ].