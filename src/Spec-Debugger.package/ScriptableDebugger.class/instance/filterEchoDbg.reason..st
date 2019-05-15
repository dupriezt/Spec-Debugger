echo debugging - private
filterEchoDbg: boolean reason: string
	filterWhyEchoDebugging ifTrue: [ ^ boolean ] ifFalse: [ ^ string ]