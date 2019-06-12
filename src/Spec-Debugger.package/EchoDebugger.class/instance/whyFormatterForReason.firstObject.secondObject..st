echo debugging -private
whyFormatterForReason: aString firstObject: anObject secondObject: anotherObject
	"Helper function to formats strings to explain why some things are or are not echoes of others"
	^ aString, Character cr asString, anObject asString, Character cr asString, anotherObject asString.