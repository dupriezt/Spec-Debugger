private
contextIsCollectionDoContext: aContext
	^ (aContext selector == #do:) and: [ Collection allSubclasses includes: aContext receiver class ]