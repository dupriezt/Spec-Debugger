echo debugging
methodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass
		"A method selector S1 in a class C1 is an echo of another method selector S2 in another class C2 if:
	- they have been manually declared to be echoes or:
		- S1 = S2 and:
		- C1 and C2 are equal or one is a subclass of the other"
	^ self methodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass returnReason: false.