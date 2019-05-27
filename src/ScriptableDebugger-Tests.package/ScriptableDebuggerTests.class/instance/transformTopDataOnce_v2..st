bug example - transformStack
transformTopDataOnce_v2: data
	| d |
	(data top isInteger) ifTrue: [ d := data pop. data push: d asCharacterDigit ].
	(data top isCharacter) ifTrue: [ d := data pop. data push: d asString ].