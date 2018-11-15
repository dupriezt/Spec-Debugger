debugging actions
temp: aSymbol 
| tempNames |
	tempNames := specDebugger context tempNames.
	(tempNames includes: aSymbol) ifTrue:[
		|index |
	   index := tempNames indexOf: aSymbol.
	   ^ specDebugger context at: index
	].
	^ nil. "no temp variable matching aSymbol found "