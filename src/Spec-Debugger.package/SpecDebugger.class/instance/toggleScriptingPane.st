toolbars
toggleScriptingPane
	showScriptingPane := showScriptingPane not.
	self window needRebuild: true.
	self window
		buildWithSpecLayout:
			(self class
				defaultSpecWithScriptingPane: showScriptingPane
				withAdvancedToolbar: showAdvancedToolbar)