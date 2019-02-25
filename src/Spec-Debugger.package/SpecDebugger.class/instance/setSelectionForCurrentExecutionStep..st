initialization
setSelectionForCurrentExecutionStep: anInterval
	| highlightSegment |
	highlightSegment := RubTextSegmentMorph
		from: anInterval first
		to: anInterval last + 1.
	highlightSegment color: Color orange.
	[self code widget widget addSegment: highlightSegment] on: Error do:[]