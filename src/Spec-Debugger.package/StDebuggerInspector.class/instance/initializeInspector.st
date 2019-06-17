initialization
initializeInspector
	inspector := StInspector basicNew.
	inspector application: SpecNullApplication new.
	inspector
		setModelBeforeInitialization: (StInspectorModel on: contextInspector table selectedItem hostObject).
	inspector initialize