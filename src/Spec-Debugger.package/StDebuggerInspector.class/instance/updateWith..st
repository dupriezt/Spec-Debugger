updating
updateWith: inspectedObject
	self model inspectedObject: inspectedObject.
	contextInspector table
		roots: inspectedObject contextInspectorNodes;
		children: [ :node | node children ].
	contextInspector table selectPath: #(1)