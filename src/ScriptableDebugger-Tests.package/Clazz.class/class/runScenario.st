run
runScenario
	"When ran, this code sets breakpoints on the two 'var := nil' statements in Clazz's methods, but not on 'var := 1'. Do not forget to remove the breakpoints manually after running this method."
	<script>
	| scdbg |
	scdbg := ScriptableDebugger2 debug: [ Clazz new helper1 ].
	[scdbg isExecutionFinished] whileFalse: [ |node| node := scdbg currentNode. ((node isAssignment) and: [ (node variable name = #var) and: [(scdbg class: (scdbg currentReceiver class) isEqualOrSubclassOf: Clazz ) and: [scdbg topValueOfCurrentContextValueStack == nil]]]) ifTrue: [ scdbg setVBreakpoint ]. scdbg step. ].
	scdbg commitVBreakpoints.