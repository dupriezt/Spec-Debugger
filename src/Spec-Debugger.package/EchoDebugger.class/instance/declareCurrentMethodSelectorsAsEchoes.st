echo debugging
declareCurrentMethodSelectorsAsEchoes
	"Manually declare that the selectors of the methods of the current contexts of the two executions are echoes of each other. This declaration is scoped to the classes of the receivers (and their subclasses)"
	self declareMethodSelector: scdbg1 currentMethod selector inClass: scdbg1 currentReceiver class asEchoMethodSelectorOf: scdbg2 currentMethod selector inClass: scdbg2 currentReceiver class.