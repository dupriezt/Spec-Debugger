event - handling
selectionChanged
	| selection currentNode methodAst ast |
	currentNode := self currentContext methodNode.
	selection := self code getSelection.
	methodAst := (currentNode methodClass
		lookupSelector: self currentContext methodNode selector)
		ifNil: [ currentNode ]
		ifNotNil: [ :method | method ast ].
	ast := methodAst bestNodeFor: selection.
	ast ifNil: [ ^ self ].
	ast isVariable
		ifFalse: [ ^ self ].
	(contextInspector itemLabeled: ast name)
		ifNotNil:
			[ :eyeInspectorItem | contextInspector list setSelectedItem: eyeInspectorItem ].
	(receiverInspector itemLabeled: ast name)
		ifNotNil:
			[ :eyeInspectorItem | receiverInspector inspector list setSelectedItem: eyeInspectorItem ]