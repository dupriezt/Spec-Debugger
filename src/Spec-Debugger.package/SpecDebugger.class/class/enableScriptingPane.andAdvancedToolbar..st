toolbars - configuration
enableScriptingPane: enableScriptingPane andAdvancedToolbar: enableAdvancedToolbar
	| toolbars |
	toolbars := OrderedCollection  new.
	self showAdvancedDebuggingToolbar
		ifTrue: [ toolbars
				add:
					{#advancedToolbar.
					self toolbarHeight} ].
	self showScriptingPane
		ifTrue: [ toolbars
				add:
					{#scriptingPane.
					(self toolbarHeight * 2.5)} ].
	^ toolbars