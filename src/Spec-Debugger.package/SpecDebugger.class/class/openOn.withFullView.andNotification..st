opening
openOn: aDebugSession withFullView: aBool andNotification: aString
	
	| debugger |
	debugger := self on: aDebugSession.
	
	false
		ifTrue: [ debugger openWithFullView ]
		ifFalse: [ debugger openWithNotification: aString].
	^ debugger.