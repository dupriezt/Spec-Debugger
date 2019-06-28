testing
shouldEnableFullStackButton

	self debugger ifNil: [ ^ false ].  
		
	^ self debugger stackTable items 
		ifEmpty: [ false ] 
		ifNotEmpty: [ :aList |
			aList last sender notNil ] 