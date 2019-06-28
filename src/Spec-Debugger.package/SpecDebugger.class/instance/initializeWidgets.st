initialization
initializeWidgets
	self initializeStack.
	toolbar := self instantiate: SpecDebuggerDynamicToolbar.
	code := self newCode.
	self initializeInspectors.
	self code
		acceptBlock: [ :text :notifyer | 
			self
				recompileMethodTo: text string
				inContext: self stackTable selectedItem
				notifying: notifyer ].
	self code whenBuiltDo: [ :ann | ann widget font: self codeFont ].
	self code selection whenChangedSend: #selectionChanged to: self