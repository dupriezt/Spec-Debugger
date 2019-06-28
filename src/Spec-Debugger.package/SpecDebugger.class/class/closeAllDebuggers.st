utilities
closeAllDebuggers
	self flag: 'This code is Morphic related!'.
	"SpecDebugger closeAllDebuggers"
	(MorphicWindowAdapter allInstances select: [:w | 
		(w model isKindOf: WindowModel) and: [ 
			w model model isKindOf: self ]  ])
			do: [:w | w delete ].
			
	SpecPreDebugWindow allInstances do: #delete.
			
		
			
	