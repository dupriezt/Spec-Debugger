*Spec-Debugger
setSelectionInterval: anInterval
	self flag: 'rawValue: changed to value:, this is temporary in Spec 1 to have feedback when the selection has changed'.
	selection value: anInterval