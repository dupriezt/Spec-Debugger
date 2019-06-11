accessing
breakOnce
	breakOnce ifNil: [ breakOnce := false ].
	^ breakOnce.