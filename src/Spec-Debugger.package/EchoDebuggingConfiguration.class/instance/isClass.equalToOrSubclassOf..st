testing
isClass: aClass equalToOrSubclassOf: anotherClass
	(aClass == anotherClass) ifTrue: [ ^true].
	(anotherClass allSubclasses includes: aClass) ifTrue: [ ^true ].
	^ false.