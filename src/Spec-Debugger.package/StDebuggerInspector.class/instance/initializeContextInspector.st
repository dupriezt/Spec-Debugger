initialization
initializeContextInspector
	contextInspector := StDebuggerRawInspection basicNew.
	contextInspector application: SpecNullApplication new.
	contextInspector
		setModelBeforeInitialization: self model inspectedObject.
	contextInspector initialize.
	contextInspector table selectPath: #(1).
	contextInspector table
		whenSelectionChangedDo: [ :item | 
			[item inspect.
			 inspector model: (item ifNotNil: [item rawValue ]).
			self flag: 'TODO replace initialize with refresh (when it works...'.
			inspector initialize ] ]