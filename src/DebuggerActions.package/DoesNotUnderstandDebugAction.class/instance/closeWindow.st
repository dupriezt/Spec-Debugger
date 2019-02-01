private
closeWindow
	"Safely close the debugger window without destroying the debugger context and stack"
	| modelWindow |
	modelWindow := self debugger window.
	modelWindow
		model: nil;
		close