initialization
initializeWidgets
	stack := self instantiate: self stackPresenterClass.
	self initializeStack.
	toolbar := self instantiate: SpecDebuggerDynamicToolbar.
	advancedToolbar := self instantiate: SpecDebuggerDynamicToolbar.
	advancedToolbar debuggingActionsPragmas: {#advancedDebuggingAction}.
	advancedToolbar buttonColor: self theme advancedActionButtonColor.
	
	code := self newCode.
	receiverInspector := self instantiate: InspectorNavigator.
	contextInspector := self instantiate: EyeDebuggerContextInspector.
	self code
		acceptBlock: [ :text :notifyer | 
			self
				recompileMethodTo: text string
				inContext: self stack selectedItem
				notifying: notifyer ].
	self code whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	self setFocusOrder.
	scriptingPane := self instantiate: SpecDebuggerScriptingPane.
	scriptingPane specDebugger: self.
	
	self code selection whenChangedSend: #selectionChanged to: self.