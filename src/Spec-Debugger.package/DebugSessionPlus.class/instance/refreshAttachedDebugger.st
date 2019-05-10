initialization
refreshAttachedDebugger
	"The following lines are to force the debugger to update itself based on its debugSession"
	self triggerEvent: #contextChanged.
	self triggerEvent: #stepInto