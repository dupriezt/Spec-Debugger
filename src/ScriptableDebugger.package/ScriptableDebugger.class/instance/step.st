stepping
step
	"Executes the next instruction. If the instruction is a message-send, step inside it."
	debugSession stepInto.
	stepHooks do: [ :aBlock | aBlock value ].