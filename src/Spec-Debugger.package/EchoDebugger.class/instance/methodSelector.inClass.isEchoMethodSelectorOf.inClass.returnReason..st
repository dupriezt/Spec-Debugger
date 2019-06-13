echo debugging -private
methodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass returnReason: aBoolean
	"A method selector S1 in a class C1 is an echo of another method selector S2 in another class C2 if:
	- they have been manually declared to be echoes or:
		- S1 = S2 and:
		- C1 and C2 are equal or one is a subclass of the other"
	| aClassI anotherClassI |
	"Working on the instanceSide of the classes means we will always work with classes even if we are given instances of Metaclass (as what happens when you ask the class of a class). Instances of Metaclass do not allow to check for subclassing"
	aClassI := aClass instanceSide.
	anotherClassI := anotherClass instanceSide.
	"Manual declaration of echo method selectors"
	(echoconf methodSelector: aSelector inClass: aClassI isEchoMethodSelectorOf: anotherSelector inClass: anotherClassI) ifTrue: [ ^ self returnReason: aBoolean boolean: true reason: 'Manually declared echo method selector in class' ].
	"Selectors equality"
	(aSelector ~= anotherSelector) ifTrue: [ 
		^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Not Echo Method Selectors: Different method selector' firstObject: (aSelector) secondObject: (anotherSelector))
	].
	"Subclassing"
	(self isClass: aClassI relatedTo: anotherClassI) ifFalse: [
		^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Not Echo Method Selectors: Neither class is a subclass of the other' firstObject: aClassI secondObject: anotherClassI) ].
	"((aClassI allSubclasses includes: anotherClassI) or: [ (anotherClassI allSubclasses includes: aClassI) ]) ifFalse: [
		^ self returnReason: aBoolean boolean: false reason: (self whyFormatterForReason: 'Not Echo Method Selectors: Neither class is a subclass of the other' firstObject: aClassI secondObject: anotherClassI) ]."
	^ self returnReason: aBoolean boolean: true reason: 'Echo method selectors in their classes' 