helpers - debugger control
clickStepOver
	self debugger updateToolbar.
	(self debugger toolbar widgets value at: #stepOverSpecId) click