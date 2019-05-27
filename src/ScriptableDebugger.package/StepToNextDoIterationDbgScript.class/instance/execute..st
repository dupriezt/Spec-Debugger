running
execute: aScriptableDebugger
	| stepHook |
	scdbg := aScriptableDebugger.
	startContext := aScriptableDebugger currentContext.
	"doContext is the context for the #do: message send to an instance of Collection (or subclass)"
	doContext := scdbg findContextForSelector: #do: andClassOrSubclassOf: Collection.
	doContext ifNil: [ ^false ].
	"doArgumentBlock is the block that has been given to the #do: message as argument. It is the block to be executed on each element of the collection"
	doArgumentBlock := doContext arguments at: 1.
	"Add a step hook that will raise a ContextNotOnStack exception if at any point, the doContext is no longer on the stack (this can happens when exceptions are involved)"
	stepHook := [ (scdbg contextIsOnStack: doContext) ifFalse: [ ContextNotOnStack signal ] ].
	scdbg addStepHook: stepHook.
	[
		"case 1: startContext is above or equal to a block context for the do:'s block"
		(scdbg findContextSuchThat: [:ctxt | scdbg context: ctxt isForBlock: doArgumentBlock]) ifNotNil: [ 
			scdbg stepToContext: doContext.
			scdbg stepToContextForBlock: doArgumentBlock.
			scdbg removeStepHook: stepHook.
			^true. 
		].
		"case 2: startContext is above the doContext and there is no block context for doArgumentBlock between them"
		scdbg stepToContextForBlock: doArgumentBlock.
		scdbg removeStepHook: stepHook.
		^ true.
	] on: ContextNotOnStack do: [
		scdbg removeStepHook: stepHook.
		^ self
	].