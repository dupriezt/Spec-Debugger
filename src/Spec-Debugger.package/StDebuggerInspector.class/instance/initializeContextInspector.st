initialization
initializeContextInspector
	contextInspector := StContextInspection basicNew.
	contextInspector application: SpecNullApplication new.
	contextInspector
		setModelBeforeInitialization: self model inspectedObject.
	contextInspector beForDebugger.
	contextInspector initialize.
	contextInspector table selectPath: #(1).
	contextInspector table
		whenSelectionChangedDo: [ :selection | 
			inspector model inspectedObject: selection selectedItem rawValue.
			self flag: 'TODO replace initialize with refresh (when it works...'.
			inspector initialize ]