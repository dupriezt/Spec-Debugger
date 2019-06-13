helpers - debugger control
clickStepInto
	self debugger updateToolbar.
	(self debugger toolbar widgets value at: #stepIntoSpecId) click