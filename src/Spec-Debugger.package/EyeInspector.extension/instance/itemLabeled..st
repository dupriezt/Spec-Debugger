*Spec-Debugger
itemLabeled: aStringOrSymbol
	^ list listItems
		detect: [ :e | e label asSymbol = aStringOrSymbol asSymbol ]
		ifNone: [ ^ nil ]