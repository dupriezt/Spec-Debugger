initialization
initializeWidgets
	self initializeStack.
	toolbar := self instantiate: SpecDebuggerDynamicToolbar.
	advancedToolbar := self instantiate: SpecDebuggerDynamicToolbar.
	advancedToolbar debuggingActionsPragmas: {#advancedDebuggingAction}.
	advancedToolbar buttonColor: self theme advancedActionButtonColor.
	code := self newCode.
	self initializeInspectors.
	self code
		acceptBlock: [ :text :notifyer | 
			self
				recompileMethodTo: text string
				inContext: self stackTable selectedItem
				notifying: notifyer ].
	self code whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	scriptingPane := self instantiate: SpecDebuggerScriptingPane.
	scriptingPane specDebugger: self.
	self code selection whenChangedSend: #selectionChanged to: self