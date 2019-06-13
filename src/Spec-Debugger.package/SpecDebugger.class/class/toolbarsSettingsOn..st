toolbars - configuration
toolbarsSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #newDebugging)
		label: 'New Debugging Tools';
		parent: #debugging;
		description: 'New Debugging tools';
		with: [ (aBuilder setting: #showScriptingPane)
				label: 'Show debugger scripting pane';
				description: 'If true, then the scripting pane is visible in the debugger';
				target: self.
			(aBuilder setting: #showAdvancedDebuggingToolbar)
				label: 'Show advanced debugger toolbar';
				description:
					'If true, then the advanced debuggign toolbar is visible in the debugger';
				target: self ]