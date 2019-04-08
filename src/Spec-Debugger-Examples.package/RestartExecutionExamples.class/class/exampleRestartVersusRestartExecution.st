example
exampleRestartVersusRestartExecution
	"# Example description:
	 # Steps to perform:
		step a bit (for example stepInto x2 to enter the call to stepA2), pretend you modify the code.
		restartExecution, to show that the debugger reopens on the call to stepA1
		Now to show that the Restart feature that was already there has issues that restartExecution does not
		stepInto x2 to enter the call to stepA2
		stepInto x7 to increment the counter to 3, and go on the <self doNiceThing> node
		restart
		stepInto x7 to attempt to redo the same thing
		But what actually happen is that the counter gets incremented to 6 and the execution reaches the <self breakEverything> node
		Conclusion: Restart does not reset the state, so it can inadvertently mess up the debugged execution and show you an imaginary execution that would never have happened. RestartExecution does not have this issue since it really just closes the debugger and re-run the code that initially caused the debugger to open."
	self new stepA1.