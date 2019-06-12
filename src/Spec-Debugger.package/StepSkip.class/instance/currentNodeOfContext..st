private
currentNodeOfContext: aContext
	^ aContext method sourceNodeForPC: aContext pc.