baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			"self spec: spec."	
			
			"Packages"
			spec
				package: 'Spec-Debugger'" with: [ spec requires: #('Spec') ]";
				package: 'DebuggerActions'.
		 ]