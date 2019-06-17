instance creation
openOn: anObject
	^ (self
		newApplication: SpecNullApplication new
		model: (StInspectorModel on: anObject)) openWithSpec