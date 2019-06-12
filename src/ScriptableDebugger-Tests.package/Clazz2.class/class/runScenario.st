run
runScenario
	"When ran, this code sets breakpoints on the methods that call the method openFile: with argument 'myFile.txt'. Do not forget to remove the breakpoints manually after running this method."
	<script>
	| scdbg |
	scdbg := ScriptableDebugger2 debug: [ Clazz2 new stepA ].
	[scdbg isExecutionFinished ] whileFalse: [ 
		((scdbg currentSelector = #openFile:) and:
		[(scdbg currentContext arguments at: 1) = 'myFile.txt'])
			ifTrue: [ scdbg setVBreakpointOnMethod: (scdbg previousMethod) ].
	 	scdbg step. ].
	scdbg commitVBreakpoints.