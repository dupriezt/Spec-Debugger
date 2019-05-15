echo debugging
context: aContext isEchoContextOf: anotherContext
	"Returns whether aContext and anotherContext are echoes of each other.
	Two contexts are echo contexts of each other if:
		- their receiver are of the same class and:
		- their method selector are the same (or they have been manually declared to be echo method selectors) and:
		- their pc are equal
	They are also echo contexts if they have been manually defined to be so.	
	"
	^ self context: aContext isEchoContextOf: anotherContext returnReason: false.