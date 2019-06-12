private
searchDoContextUnderOrEqualTo: aContext
	^ aContext findContextSuchThat: [ :aContextA | self contextIsCollectionDoContext: aContextA]