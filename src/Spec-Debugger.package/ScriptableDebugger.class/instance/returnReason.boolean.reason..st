echo debugging - private
returnReason: aBoolean boolean: anotherBoolean reason: aString
	"If aBoolean is true, returns aString, otherwise returns anotherBoolean"
	aBoolean ifTrue: [ ^ aString ] ifFalse: [ ^anotherBoolean ].