updating
updateWith: inspectedObject
	| oldPath oldItem |
	oldPath := contextInspector table selection selectedPath.
	oldItem := contextInspector table selectedItem hostObject.
	self model inspectedObject: inspectedObject.
	contextInspector setAttributeTable.
	contextInspector table
		selectPath:
			(inspectedObject == oldItem
				ifTrue: [ oldPath ]
				ifFalse: [ #(1) ])