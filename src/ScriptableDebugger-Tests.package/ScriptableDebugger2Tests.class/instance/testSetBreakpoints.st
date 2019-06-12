as yet unclassified
testSetBreakpoints
"Not a real test"
	| node1 node2 |
	scdbg := ScriptableDebugger2 debug: [ self helperToSetBreakpointsOn ].
	scdbg step.
	node1 := scdbg currentNode.
	scdbg stepOver.
	node2 := scdbg currentNode.
	scdbg setBreakpointOnASTNode: node1.
	scdbg setBreakpointOnASTNode: node2.
	scdbg removeAllBreakpointsSetByMe.