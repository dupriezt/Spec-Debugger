start
attachTo: aDebugSessionPlus
	"Returns a new instance of ScriptableDebugger attached to aDebugSessionPlus"
	(aDebugSessionPlus class == DebugSessionPlus) ifFalse: [ Error signal: 'ScriptableDebugger can only attach to instances of DebugSessionPlus' ].
	^ self new attachTo: aDebugSessionPlus.
