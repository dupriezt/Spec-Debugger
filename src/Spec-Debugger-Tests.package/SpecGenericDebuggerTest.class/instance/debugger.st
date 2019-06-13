accessing
debugger
	^ debugger ifNil: [ debugger := self debuggerClass new ]