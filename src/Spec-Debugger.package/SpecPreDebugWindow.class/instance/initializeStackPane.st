initialization widgets
initializeStackPane
	
	self stackPane
		displayBlock: [ :aContext |  {aContext receiver class. aContext} ];
		items: (self debugger session shortStack) ;
		whenSelectedItemChanged: [ :aContext | 
			"Set the selection before, as debugAction removes the link with the debugger. "
			self debugger stackTable selectItem: aContext.
			self openFullDebugger ]
		