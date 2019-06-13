Description:
See method #executeOnDebugSession:onContext:

Improvements:
- When hovering over the corresponding button in the spec debugger, it would be nice if the stack frame of the do: message was highlighted to show which #do: is about to be stepped.
- The available/nonAvailable state of the corresponding button in the specdebugger should change based on which context is selected in the stack. Right now button availability is not recomputed when a different stack frame is selected.