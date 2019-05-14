echo debugging
whycontext: aContext isEchoContextOf: anotherContext
	"If aContext and anotherContext are echo contexts, returns 'Echo context'.
	Otherwise, returns a string explaining why they aren't echo contexts"
	(aContext receiver class == anotherContext receiver class) ifFalse: [
			^ '#Different receiver class',Character cr asString,
			aContext receiver class asString, Character cr asString,
			anotherContext receiver class asString].
	(aContext method == anotherContext method) ifFalse: [
			^ '#Diffent methods',Character cr asString,
			aContext method asString, Character cr asString,
			anotherContext method asString
		].
	(aContext pc == anotherContext pc) ifFalse: [
			^ '#Diffent pc',Character cr asString,
			aContext pc asString, Character cr asString,
			anotherContext pc asString
		].
	^ 'Echo contexts'.