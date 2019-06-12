stepping
step
	"Step the execution once"
	debugSession stepInto.
	stepHooks do: [ :aBlock | aBlock value ].