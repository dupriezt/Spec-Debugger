tools registry
registerToolsOn: registry

	"Add ourselves to registry. See [Smalltalk tools]" 
	"registry register: self as: #debugger."
	registry registerDebugger: self withRank: 80.
