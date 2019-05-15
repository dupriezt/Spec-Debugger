echo debugging
declareMethodSelector: aSelector inClass: aClass asEchoMethodSelectorOf: anotherSelector inClass: anotherClass
		| aClassI anotherClassI |
	"Working on the instanceSide of the classes means we will always work with classes even if we are given instances of Metaclass (as what happens when you ask the class of a class). Instances of Metaclass do not allow to check for subclassing"
	aClassI := aClass instanceSide.
	anotherClassI := anotherClass instanceSide.
	echoMethods add: { aSelector. aClassI. anotherSelector. anotherClassI }