stepToDebuggerEntryPointIn: aProcess
	"Step into the execution until a context is reached 
	that can be handled by the debugger under test."
	
	^ self subclassResponsibility