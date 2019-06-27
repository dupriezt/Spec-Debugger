session
removeActionsForSession: aSession
self flag: 'Kill it'.
	aSession ifNotNil: [ 
		aSession  
			removeActionsForEvent: #restart;
			removeActionsForEvent: #resume;
			removeActionsForEvent: #stepInto;
			removeActionsForEvent: #stepOver;
			removeActionsForEvent: #stepThrough;
			removeActionsForEvent:#contextChanged ]. 