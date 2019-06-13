private
context: aContext isAboveOrEqualToBlockContextForBlock: aBlock
	^ (aContext findContextSuchThat: [ :aContextA | self context: aContextA isForBlock: aBlock ]) isNotNil.