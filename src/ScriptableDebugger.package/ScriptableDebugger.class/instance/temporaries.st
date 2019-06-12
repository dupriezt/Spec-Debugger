stackAccessHelpers
temporaries
	"Returns the temporary variables of the current stack-frame."
	| dictionary |
	dictionary := Dictionary new.
	self context tempNames do: [ :name | dictionary at: name put: (self context tempNamed: name) ].
	^ dictionary.