echo debugging - private
context: aContext isEchoContextOf: anotherContext returnReason: aBoolean
	"Returns whether aContext and anotherContext are echoes of each other.
	Two contexts are echo contexts of each other if:
		- their receiver are of the same class and:
		- their method selector are echoes of each otherthe same (or they have been manually declared to be echo method selectors) and:
		- their pc are equal
	They are also echo contexts if they have been manually defined to be so.	
	"
	"Checking if these two contexts have been declared to be echo contexts"
	(echoconf context: aContext isEchoContextOf: anotherContext) ifTrue: [
			^ self returnReason: aBoolean boolean: true reason: 'Manually declared echo contexts'].
	"Receiver class"
	(aContext receiver class == anotherContext receiver class) ifFalse: [ 
			^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Not echo contexts: Different receiver class' firstObject: aContext receiver class secondObject: anotherContext receiver class) ].
	"Method selector"
	(self methodSelector: (aContext method selector) inClass: (aContext receiver class) isEchoMethodSelectorOf: (anotherContext method selector) inClass: (anotherContext receiver class)) ifFalse: [ 
		^ self methodSelector: (aContext method selector) inClass: (aContext receiver class) isEchoMethodSelectorOf: (anotherContext method selector) inClass: (anotherContext receiver class) returnReason: aBoolean
	].
"	((aContext method selector == anotherContext method selector) or: [ self methodSelector: (aContext method selector) inClass: (aContext receiver class) isEchoMethodSelectorOf: (anotherContext method selector) inClass: (anotherContext receiver class) ]) ifFalse: [ 
			^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Different method selector' firstObject: (aContext method selector) secondObject: (anotherContext method selector)) ]."
	"pc"
	(aContext pc == anotherContext pc) ifFalse: [ 
			^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Not echo contexts: Different pc' firstObject: (aContext pc) secondObject: (anotherContext pc)) ].
	"True if all previous checked passed"
	^ self returnReason: aBoolean boolean: true reason: 'Echo Contexts'.