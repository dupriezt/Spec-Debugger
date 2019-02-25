specs
defaultSpecWithScriptingPane: enableScriptingPane withAdvancedToolbar: enableAdvancedToolbar
	^ self
		defaultSpecWith:
			(self
				enableScriptingPane: enableScriptingPane
				andAdvancedToolbar: enableAdvancedToolbar)