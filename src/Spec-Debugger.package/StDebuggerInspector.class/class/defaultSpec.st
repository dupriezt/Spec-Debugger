specs
defaultSpec
	<spec: #default>
	^ SpecPanedLayout newHorizontal
		position: 40 percent;
		add: #contextInspector;
		add: #inspector;
		yourself