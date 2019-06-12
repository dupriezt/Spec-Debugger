stepping
skipWith: replacementValue
	"If it is a message-send or assignment, skips the execution of the current instruction, and puts the replacementValue on the execution stack."
	"If the current node is a message send or assignment"
	((self currentNode isMessage not) and: [ self currentNode isAssignment not]) ifTrue: [ ^false ].
	self currentNode isMessage ifTrue: [
		"Pop the arguments of the message send from the context's value stack"
		self currentNode arguments do: [ :arg | self context pop ].
		"Pop the receiver from the context's value stack"
		self context pop.
		"Push the replacement value on the context's value stack, to simulate that the message send happened and returned nil"
		self context push: replacementValue.
		"Increase the pc to go over the message send"
		self context pc: self context pc + 1.
		"Execute bytecodes the debugger usually executes without stopping the execution (for example popping the return value of the just executed message send if it is not used afterwards)"
		self debugSession stepToFirstInterestingBytecodeIn: self debugSession interruptedProcess.
		^ self.
	].
	self currentNode isAssignment ifTrue: [
		"Pop the value to be assigned"
		self context pop.
		"Push the replacement value on the context's value stack, to simulate that the assignment happened and had value nil"
		self context push: replacementValue.
		"Increase the pc to go over the assignment"
		self context pc: self context pc + 2.
		"Execute bytecodes the debugger usually executes without stopping the execution (for example popping the return value of the just executed message send if it is not used afterwards)"
		self debugSession stepToFirstInterestingBytecodeIn: self debugSession interruptedProcess.
		^ self.
	].