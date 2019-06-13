stack
updateStackFromSession: aSession
	self stack session: aSession.
	self flag: 'Remove nil test'.
	stackTable
		items:
			(aSession
				ifNil: [ OrderedCollection new ]
				ifNotNil: [ :s | s shortStack ])