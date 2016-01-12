instantiateSession
	| context process |
	context := self contextToTest.

	process := Process 
		forContext: context
		priority: Processor userInterruptPriority.
	
	self stepToDebuggerEntryPointIn: process.
	^ self debuggerToTest spanNewSessionLabeled:  'test session' forContext: process suspendedContext fromProcess: process