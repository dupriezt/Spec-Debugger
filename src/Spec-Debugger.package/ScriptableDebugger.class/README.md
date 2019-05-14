Helpers:
- To execute a block multiple times:
	anInt timesRepeat: aBlock
	
Instance Variables:
- breakpoints: list of the breakpoints set by this scriptable debugger
	
Notes:
- by default, a DebugSession created by a ScriptableDebugger will be set NOT to trigger events to refresh graphical debuggers opened on it. So a graphical debugger opened on it will not refresh even when its buttons are pressed. See protocal "graphical debugger" for more info on this.
	
Ideas:
- protection against stepping into the "Processor terminateActive" of BlockClosure>>#newProcess.
-> Added to DebugSessionPlus>>#stepInto:, DebugSessionPlus>>#stepOver: and DebugSessionPlus>>#stepThrough: