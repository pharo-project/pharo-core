debug
	"Show the stack of the process leading to this syntax editor, typically showing the stack of the compiler as called from fileIn."

	^ debugger openFullNoSuspendLabel: 'Stack of the Syntax Error'.
