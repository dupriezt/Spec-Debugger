*Spec-Debugger
highlightNextIntructionInterval: anInterval
	| highlightSegment |
	highlightSegment := RubTextSegmentMorph
		from: anInterval first
		to: anInterval last + 1.
	highlightSegment color: self theme nextInstructionHighlightColor.
	self widget
		ifNotNil: [ :adapter | adapter widget addSegment: highlightSegment ]