baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [			
			"Packages"
			spec
				package: 'Spec-Debugger' with: [ spec requires: #('Spec') ];
				package: 'DebuggerActions'.
		 ]