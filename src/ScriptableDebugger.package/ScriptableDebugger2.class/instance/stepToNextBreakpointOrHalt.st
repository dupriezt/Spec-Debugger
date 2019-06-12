stepping
stepToNextBreakpointOrHalt
	"Step the execution until a breakpoint or halt is reached. Skips the breakpoint/halt so that no exception is signalled"
	self stepWhileFalse: [
		(self currentNode isMessage) and: [ (self currentNode selector = #signal) and: [(self currentReceiver = Halt) or: [self currentReceiver = Break]  ]]].
	"If the execution is not finished, it means the stepping stopped because it was about to signal a Halt or Break. In this case, skip the signal message-send "
	self isExecutionFinished ifFalse: [ self skip ].