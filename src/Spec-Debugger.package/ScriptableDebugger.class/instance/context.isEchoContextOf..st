echo debugging
context: aContext isEchoContextOf: anotherContext
	"Returns whether aContext and anotherContext are echoes of each other.
	Two contexts are echo contexts of each other if:
		- their receiver are of the same class
		- their method are the same
		- their pc are equal"
	(aContext receiver class == anotherContext receiver class) ifFalse: [ ^ false ].
	(aContext method == anotherContext method) ifFalse: [ ^ false ].
	(aContext pc == anotherContext pc) ifFalse: [ ^false ].
	^ true.