initialization
initializeInspectors
	receiverInspector := StDebuggerInspector
		newApplication: SpecNullApplication new
		model: (StInspectorModel on: nil).
	contextInspector := StDebuggerInspector
		newApplication: SpecNullApplication new
		model: (StInspectorModel on: [  ] asContext)