echo debugging
whymethodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass
	"Returns why these two selectors are or are not echoes of each other"
	^ self methodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass returnReason: true.