echo debugging
methodSelector: aSelector inClass: aClass isEchoMethodSelectorOf: anotherSelector inClass: anotherClass
	^ echoMethods anySatisfy: [ :quadruple | 
		(self methodSelector: aSelector inClass: aClass isInQuadruple: quadruple) and: [ self methodSelector: anotherSelector inClass: anotherClass isInQuadruple: quadruple ]
	].