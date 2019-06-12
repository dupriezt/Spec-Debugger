specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row | 
			row
				add: #scriptingBox;
				newColumn: [ :col | 
					col
						add: #executeButton;
						add: #loadButton ]
					width: 60 ]