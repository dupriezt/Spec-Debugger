accessing
whenHit
	whenHit ifNil: [ whenHit := OrderedCollection new ].
	^ whenHit