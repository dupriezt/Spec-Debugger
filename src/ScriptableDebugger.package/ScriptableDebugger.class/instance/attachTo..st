start
attachTo: aDebugSessionPlus
	"Attaches this scriptable debugger to an already existing instance of DebugSessionPlus"
	process := aDebugSessionPlus interruptedProcess.
	debugSession := aDebugSessionPlus.
	debugSession deactivateEventTriggering.
	^ self