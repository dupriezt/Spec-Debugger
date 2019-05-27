tests
transformTopStack
	(stack top isInteger) ifTrue: [ stack push: (stack pop asCharacterDigit) ].
	(stack top isCharacter) ifTrue: [ stack push: (stack pop asString) ].