debugging actions
node
	^ specDebugger session context method sourceNodeForPC: (specDebugger session context pc)