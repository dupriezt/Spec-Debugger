example - stackTransform
transformTopDataOnce_v1: data
	| d |
	"(data top isInteger) ifTrue: [ d := data pop. data push: d asCharacterDigit ]."
	(data top isCharacter) ifTrue: [ d := data pop. data push: d asString ].