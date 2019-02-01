private
createMissingClassIn: aContext
	| senderContext variableNode previousContext errorMsgNode |
	
	variableNode := nil.
	
	[ senderContext := aContext sender.
	errorMsgNode := senderContext method sourceNodeExecutedForPC: senderContext pc.
	variableNode := self findUndeclaredVariableIn: errorMsgNode ]
		on: Error
		do: [ ^self ].
		
	OCUndeclaredVariableWarning new
		node: variableNode;
		defineClass: variableNode name.
		
	previousContext := aContext stack second.
	
	self closeWindow.
	
	previousContext restart