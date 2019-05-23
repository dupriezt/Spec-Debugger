Code snippet for echo debugging on this example execution:

testExec1 := ExampleExecutionStackTransform1 new setUp.
testExec2 := ExampleExecutionStackTransform2 new setUp.
scdbg1 := ScriptableDebugger debug: [ testExec1 testTransformStack ].
scdbg2 := ScriptableDebugger debug: [ testExec2 testTransformStack ].
[scdbg1 currentSelector = scdbg2 currentSelector] whileTrue: [ scdbg1 step. scdbg2 step. ].
scdbg1 openInGraphicalDebugger. scdbg2 openInGraphicalDebugger.

scdbg1 activateAutoRefreshOfAttachedGraphicalDebugger. scdbg2 activateAutoRefreshOfAttachedGraphicalDebugger.
scdbg2 refreshAttachedGraphicalDebugger 