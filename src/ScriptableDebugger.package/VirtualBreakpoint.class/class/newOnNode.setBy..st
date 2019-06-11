instance creation
newOnNode: aNode setBy: anObject
	| brkpt |
	brkpt := self new node: aNode; setter: anObject.
	self all add: brkpt.
	^ brkpt.