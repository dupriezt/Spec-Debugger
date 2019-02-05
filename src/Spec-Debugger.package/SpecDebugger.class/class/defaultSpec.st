specs
defaultSpec
	| toolbarHeight |
	
	toolbarHeight := self toolbarHeight.
	
	^ SpecLayout composed
		add: #stack origin: 0@0 corner: 1@0.25;
		add: #toolbar origin: 0@0.25 corner: 1@0.25 offsetOrigin: 0@0 offsetCorner: 0@toolbarHeight;
		addHSplitter;
		add: #code origin: 0@0.25 corner: 1@0.80 offsetOrigin: 0@toolbarHeight offsetCorner: 0@0;
		addHSplitter;
		newRow: [ :r |
			r 
				add: #receiverInspector;
				addSplitter;
				add: #contextInspector]
		top: 0.8;
		addHSplitter;
		add: #inspectSpecDebuggerButton origin: 0.6@0.5 corner: 0.9@0.6;
		add: #scriptingPane origin: 0.6@0.6 corner: 0.95@0.7;
		yourself 