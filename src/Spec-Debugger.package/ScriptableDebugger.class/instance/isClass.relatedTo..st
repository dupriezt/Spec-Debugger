echo debugging - private
isClass: aClass relatedTo: anotherClass
	"True if:
		- aClass == anotherClass or:
		- aClass is a subclass of anotherClass or:
		- anotherClass is a subclass of aClass"
	(aClass == anotherClass) ifTrue: [ ^true ].
	(aClass allSubclasses includes: anotherClass) ifTrue: [ ^true ].
	(anotherClass allSubclasses includes: aClass) ifTrue: [ ^true ].
	^ false