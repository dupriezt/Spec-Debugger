specs
defaultSpecWith: toolbarsSpecs
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				add: #stack;
				add: #toolbar height: self toolbarHeight.
			toolbarsSpecs do:
					[ :toolbarNameAndSize | col add: toolbarNameAndSize first height: toolbarNameAndSize last ].
			col
				addSplitter;
				add: #code;
				addSplitter;
				newRow: [ :row | 
					row
						add: #receiverInspector;
						add: #contextInspector ] ]