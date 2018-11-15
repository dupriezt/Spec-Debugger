specs
defaultSpec

	^ SpecLayout composed
		newRow: [ :row | row add: #scriptingBox; add: #executeButton width: 50 ]
		origin: 0 @ 0 corner: 1 @ 0.7.