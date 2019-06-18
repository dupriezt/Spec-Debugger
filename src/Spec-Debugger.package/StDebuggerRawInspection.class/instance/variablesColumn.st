building
variablesColumn
	^ CompositeTableColumn new
		addColumn:
			(ImageTableColumn new
				width: 20;
				evaluated: #icon;
				yourself);
		addColumn:
			(StringTableColumn new
				evaluated: #label;
				yourself);
		yourself