helper
stepA2
	counter := counter + 1.
	counter := counter + 1.
	counter := counter + 1.
	(counter = 3) ifTrue: [ self doNiceThing ] ifFalse: [ self breakEverything ].