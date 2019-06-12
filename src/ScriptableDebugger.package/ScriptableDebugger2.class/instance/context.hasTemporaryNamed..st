querying - temporary variables
context: aContext hasTemporaryNamed: aSymbol
	^ aContext tempNames includes: aSymbol.