helper
class: aClass isEqualOrSubclassOf: anotherClass
	(aClass = anotherClass) ifTrue: [ ^ true ].
	^ anotherClass allSubclasses includes: aClass.