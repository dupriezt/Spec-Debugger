specs
defaultSpec
	<spec: #default>
	^ SpecPanedLayout newVertical
		position: 70 percent;
		add:
			(SpecBoxLayout newVertical
				add: #stack;
				add: #stackTable;
				add: #toolbar
					withConstraints: [ :constraint | constraint height: self toolbarHeight ];
				add: #code;
				yourself);
		add:
			(SpecPanedLayout newHorizontal
				add: #receiverInspector;
				add: #contextInspector;
				yourself);
		yourself