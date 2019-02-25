actions lookup
debuggingActionsPragmas
	^ debuggingActionsPragmas
		ifNil: [ debuggingActionsPragmas := {#debuggingAction} ]