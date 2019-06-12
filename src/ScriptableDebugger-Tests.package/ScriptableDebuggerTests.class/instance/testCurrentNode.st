tests
testCurrentNode
	scdbg := ScriptableDebugger debug: [ self helperMethod1 ].
	scdbg openInGraphicalDebugger.
	scdbg activateAutoRefreshOfAttachedGraphicalDebugger.
"	scdbg step; step."
"	scdbg currentNode inspect."