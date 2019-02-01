private
findUndeclaredVariableIn: errorMsgNode
	^ errorMsgNode allChildren
		detect: [ :n | n isVariable and: [ n isUndeclared ] ]
		ifNone: [ errorMsgNode parent allChildren
				detect: [ :n | n isVariable and: [ n isUndeclared ] ] ]