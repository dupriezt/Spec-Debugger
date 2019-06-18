updating
updateInspectorsFromContext: aContext
	aContext ifNil:['ni context' crLog. ^self].
	contextInspector updateWith: aContext.
	receiverInspector updateWith: aContext home receiver