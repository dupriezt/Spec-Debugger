tests
runCaseManaged
	"This prevents the TestExecutionEnvironment from trying to kill processes created during the test. Without it, it adds on:do: contexts on the process, and this somehow makes the process answers true to isTerminating, triggering the protection against stepping terminating processes from DebugSessionPlus>>stepInto:
	It is not necessary to terminate processes created by ScriptableDebugger because these processes are not scheduled."
	^ self runCase