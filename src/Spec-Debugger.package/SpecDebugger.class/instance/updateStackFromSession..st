stack
updateStackFromSession: aSession

	self flag: 'Remove nil test'.
	stackTable
		items:
			(aSession
				ifNil: [ OrderedCollection new ]
				ifNotNil: [ :s | s shortStack ]).
	stackTable selectIndex: 1