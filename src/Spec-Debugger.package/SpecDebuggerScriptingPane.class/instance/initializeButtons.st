initialization
initializeButtons
	executeButton := self newButton.
	loadButton := self newButton.
	executeButton
		label: 'Run';
		icon: (self iconNamed: #smallPrintIt);
		action:
				[ self executeScriptingBoxContent: self scriptingBox getText asString ].
	loadButton
		label: 'Load';
		icon: (self iconNamed: #smallLoadProject);
		action: [ "self loadScript" ]