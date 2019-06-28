updating actions
updateContextChanged
	| selection |
	selection := self stackTable selectedItem.
	self updateStep.
"	self stack selectItem: selection"