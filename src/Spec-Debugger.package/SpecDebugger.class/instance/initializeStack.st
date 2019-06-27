stack
initializeStack
	stackTable := self newTable.
	stackTable title: 'Stack'.
	stackTable
		addColumn: (StringTableColumn title: 'Class' evaluated: [ :item | item receiver class]);
		addColumn: (StringTableColumn title: 'Method' evaluated: [ :item | item method selector]);
		addColumn: (StringTableColumn title: 'Context' evaluated: [ :item | item sender ]).
	stackTable whenSelectionChangedDo: [ :selection |  
		|context|
		context := selection selectedItem.
		self updateCodeFromContext: context.
		self updateInspectorsFromContext: context.]