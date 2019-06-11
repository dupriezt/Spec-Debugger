run
runScenario2
	"An alternative version of runScenario"
	<script>
	| scdbg |
	scdbg := ScriptableDebugger debug: [ Clazz2 new stepA ].
	scdbg runExecutionWhilePlacingBreakpointsWhen: [
		((scdbg currentNode isMessage) and:
		[ scdbg currentNode selector = #openFile: ]) and:
		[ (scdbg at: 0 fromTheEndOfValueStackOfContext: (scdbg currentContext)) = 'myFile.txt']
	].	